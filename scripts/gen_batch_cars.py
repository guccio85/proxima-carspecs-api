#!/usr/bin/env python3
"""
Generic car JSON → SQL batch generator for proxima-carspecs-api.
Usage: python3 scripts/gen_batch_cars.py <batch_num> <file1.json> [file2.json ...] [--base <current_db_count>]
"""
import json, pathlib, sys, re

DATA_DIR = pathlib.Path('/Users/proximasuite/Desktop/ProximaDrivers/src/data/vehicles')
OUT_DIR = pathlib.Path('/Users/proximasuite/Desktop/proxima-carspecs-api/sql')
SQL_DIR = OUT_DIR  # alias

def load_existing_keys():
    """Load (brand_id, model_id, engine_name[:80]) already in DB from old batches."""
    existing = set()
    pattern = re.compile(r"gen_random_uuid\(\),\s*'([^']+)',\s*'[^']+',\s*'[^']+',\s*'([^']+)',\s*'[^']+',\s*'[^']+',\s*\d+,\s*\d+,\s*'([^']+)'")
    old_files = [f for f in SQL_DIR.glob('batch*.sql')
                 if f.name not in ('batch13_cars.sql','batch14_cars.sql','batch15_cars.sql','batch16_cars.sql')]
    for f in old_files:
        for line in f.read_text().splitlines():
            m = pattern.search(line)
            if m:
                existing.add((m.group(1), m.group(2), m.group(3)[:80]))
    print(f"  [dedup] Loaded {len(existing)} existing keys from {len(old_files)} old batches", file=sys.stderr)
    return existing

COUNTRY_REGION = {
    'Germany': 'Europe', 'Italy': 'Europe', 'France': 'Europe', 'Spain': 'Europe',
    'UK': 'Europe', 'Netherlands': 'Europe', 'Sweden': 'Europe', 'Norway': 'Europe',
    'Austria': 'Austria', 'Switzerland': 'Europe', 'Belgium': 'Europe',
    'Slovenia': 'Europe', 'Czech Republic': 'Europe', 'Romania': 'Europe',
    'Poland': 'Europe', 'EU': 'Europe',
    'Japan': 'Asia', 'JP': 'Asia', 'South Korea': 'Asia', 'KR': 'Asia',
    'China': 'Asia', 'CN': 'Asia', 'Taiwan': 'Asia', 'India': 'Asia', 'IN': 'Asia',
    'USA': 'North America', 'US': 'North America', 'Canada': 'North America',
    'Brazil': 'South America', 'Argentina': 'South America',
    'Australia': 'Oceania',
    'South Africa': 'Africa',
    'Ukraine': 'Europe', 'Russia': 'Europe',
}

def region_for(country):
    return COUNTRY_REGION.get(country, 'Global')

def safe(s):
    return str(s).replace("'", "''") if s is not None else ''

def val(v):
    if v is None or v == '' or v == 0:
        return 'NULL'
    try:
        return str(int(float(v)))
    except (ValueError, TypeError):
        return 'NULL'

def process_files(batch_num, json_files, base_count):
    existing_db = load_existing_keys()
    seen = set()
    rows = []
    brand_list = []

    for jfile in json_files:
        fpath = DATA_DIR / jfile
        if not fpath.exists():
            print(f'WARNING: {jfile} not found, skipping', file=sys.stderr)
            continue
        d = json.loads(fpath.read_text())
        brands = d.get('brands', d.get('categories', []))
        vtype = d.get('vehicle_type', 'car')

        for b in brands:
            bid = b['id']
            bname = safe(b['name'])
            bcountry = safe(b.get('country', '?'))
            region = region_for(b.get('country', ''))
            brand_list.append(b['name'])

            for m in b.get('models', []):
                mid = m['id']
                mname = safe(m['name'])
                bt = m.get('body_type', 'sedan')
                ys = m.get('year_start', 2000)
                ye = m.get('year_end', 2026)

                for e in m.get('engines', []):
                    ename = safe(e['name'])
                    hp = val(e.get('hp'))
                    cc = val(e.get('cc'))
                    fuel = e.get('fuel_type', 'gasoline')
                    # fix electric fuel label
                    if 'electric' in ename.lower() or 'elett' in ename.lower() or 'kw' in ename.lower():
                        fuel = 'electric'

                    key = (bid, mid, ename[:80])
                    if key in seen:
                        continue
                    seen.add(key)
                    # Skip if already in DB from previous batches
                    if key in existing_db:
                        continue

                    rows.append(
                        f"  (gen_random_uuid(), '{bid}', '{bname}', '{bcountry}', "
                        f"'{mid}', '{mname}', '{bt}', {ys}, {ye}, "
                        f"'{ename}', {hp}, {cc}, '{fuel}', '{vtype}', '{region}')"
                    )

    unique_brands = sorted(set(brand_list))
    out_file = OUT_DIR / f'batch{batch_num}_cars.sql'

    header = f"""-- Batch {batch_num} — AUTO: {', '.join(unique_brands[:8])}{'...' if len(unique_brands)>8 else ''}
-- Source: {', '.join(json_files)}
-- vehicle_type as per source JSON
INSERT INTO vehicle_specs
  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)
VALUES"""

    footer = f"""
ON CONFLICT DO NOTHING;

-- Fine: {len(rows)} motorizzazioni — batch {batch_num}
-- Totale atteso: {base_count} + {len(rows)} = {base_count + len(rows)}
"""
    out_file.write_text(header + '\n' + ',\n'.join(rows) + '\n' + footer)
    print(f"Written {len(rows)} rows -> {out_file}")
    return len(rows)

if __name__ == '__main__':
    args = sys.argv[1:]
    base = 0
    if '--base' in args:
        i = args.index('--base')
        base = int(args[i+1])
        args = args[:i] + args[i+2:]
    
    if len(args) < 2:
        print("Usage: gen_batch_cars.py <batch_num> <file1.json> [file2.json ...] [--base N]")
        sys.exit(1)
    
    batch_num = args[0]
    json_files = args[1:]
    process_files(batch_num, json_files, base)

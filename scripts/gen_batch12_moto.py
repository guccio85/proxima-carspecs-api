#!/usr/bin/env python3
import json, pathlib

f = pathlib.Path('/Users/proximasuite/Desktop/ProximaDrivers/src/data/vehicles/vehicles_moto.json')
d = json.loads(f.read_text())
brands = d.get('brands', d.get('categories', []))

seen = set()
rows = []

for b in brands:
    bid = b['id']
    bname = b['name'].replace("'", "''")
    bcountry = b.get('country', '?').replace("'", "''")
    country_raw = b.get('country', '?')
    if country_raw in ('Italy', 'Germany', 'UK', 'France', 'Spain', 'Austria', 'Slovenia', 'Norway', 'Sweden'):
        region = 'Europe'
    elif country_raw in ('Japan', 'JP'):
        region = 'Asia'
    elif country_raw == 'USA':
        region = 'North America'
    elif country_raw in ('India', 'IN'):
        region = 'Asia'
    elif country_raw in ('CN', 'China'):
        region = 'Asia'
    else:
        region = 'Global'

    for m in b.get('models', []):
        mid = m['id']
        mname = m['name'].replace("'", "''")
        bt = m.get('body_type', 'naked')
        ys = m.get('year_start', 2000)
        ye = m.get('year_end', 2026)

        for e in m.get('engines', []):
            ename = e['name'].replace("'", "''")
            hp = e.get('hp', '')
            cc = e.get('cc', '')
            fuel = e.get('fuel_type', 'gasoline')

            key = (bid, mid, ename[:80])
            if key in seen:
                continue
            seen.add(key)

            hp_val = str(int(hp)) if (hp is not None and hp != '' and hp != 0) else 'NULL'
            cc_val = str(int(cc)) if (cc is not None and cc != '' and cc != 0) else 'NULL'
            rows.append(
                f"  (gen_random_uuid(), '{bid}', '{bname}', '{bcountry}', "
                f"'{mid}', '{mname}', '{bt}', {ys}, {ye}, "
                f"'{ename}', {hp_val}, {cc_val}, '{fuel}', 'motorcycle', '{region}')"
            )

header = """-- Batch 12 — MOTO: Ducati, BMW Motorrad, Yamaha, Honda, Kawasaki, KTM, Aprilia, Triumph,
-- Harley-Davidson, Indian, MV Agusta, Suzuki, Royal Enfield, Bajaj, CFMoto, Benelli + altri
-- vehicle_type = 'motorcycle'
INSERT INTO vehicle_specs
  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)
VALUES"""

footer = f"""ON CONFLICT DO NOTHING;

-- Fine: {len(rows)} motorizzazioni — batch 12 MOTO
-- Totale atteso: 13,258 + {len(rows)} = {13258 + len(rows)}
"""

out = pathlib.Path('/Users/proximasuite/Desktop/proxima-carspecs-api/sql/batch12_moto.sql')
out.write_text(header + '\n' + ',\n'.join(rows) + '\n' + footer)
print(f"Written {len(rows)} rows -> {out}")

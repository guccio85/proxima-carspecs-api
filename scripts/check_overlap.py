#!/usr/bin/env python3
import pathlib, re

sql_dir = pathlib.Path('/Users/proximasuite/Desktop/proxima-carspecs-api/sql')
old_batches = ['batch2_aliases.sql','batch3_aliases.sql','batch4_aliases.sql',
               'batch5_aliases.sql','batch6_aliases.sql','batch7_aliases.sql','batch8_aliases.sql']

existing_keys = set()
existing_brands = set()
for fname in old_batches:
    f = sql_dir / fname
    if not f.exists():
        continue
    for line in f.read_text().splitlines():
        m = re.search(r"gen_random_uuid\(\),\s*'([^']+)',\s*'[^']+',\s*'[^']+',\s*'([^']+)',", line)
        if m:
            existing_keys.add((m.group(1), m.group(2)))
            existing_brands.add(m.group(1))

print(f"Brand già in DB (batch 2-8): {len(existing_brands)}")
print("  " + ", ".join(sorted(existing_brands)))

new_batches = ['batch13_cars.sql','batch14_cars.sql','batch15_cars.sql','batch16_cars.sql']
print()
total_new = 0
total_dup = 0
for fname in new_batches:
    f = sql_dir / fname
    if not f.exists():
        continue
    overlap_brands = set()
    total = 0
    dup = 0
    for line in f.read_text().splitlines():
        m = re.search(r"gen_random_uuid\(\),\s*'([^']+)',\s*'[^']+',\s*'[^']+',\s*'([^']+)',", line)
        if m:
            total += 1
            bid, mid = m.group(1), m.group(2)
            if (bid, mid) in existing_keys:
                dup += 1
                overlap_brands.add(bid)
    total_new += total
    total_dup += dup
    status = "⚠️  OVERLAP" if dup > 0 else "✅ PULITO"
    print(f"{status} {fname}: {total} righe, {dup} modelli già in DB")
    if overlap_brands:
        print(f"   brand sovrapposti: {sorted(overlap_brands)}")

print(f"\nRIEPILOGO: {total_new} righe totali, {total_dup} già esistenti → {total_new-total_dup} nette nuove")

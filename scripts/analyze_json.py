import json, os

data_dir = "/Users/proximasuite/Desktop/ProximaDrivers/src/data/vehicles/"
files = [f for f in os.listdir(data_dir) if f.endswith('.json')]

total_brands = set()
total_models = set()
total_engines = 0
summary = {}

for fname in sorted(files):
    path = os.path.join(data_dir, fname)
    with open(path) as f:
        data = json.load(f)

    brands = data.get('brands', [])
    file_models = 0
    file_engines = 0

    for b in brands:
        bid = b.get('id') or b.get('brand_id', '')
        total_brands.add(bid)
        for m in b.get('models', []):
            mid = m.get('id') or m.get('model_id', '')
            total_models.add(mid)
            file_models += 1
            file_engines += len(m.get('engines', []))
            total_engines += len(m.get('engines', []))

    summary[fname] = {'brands': len(brands), 'models': file_models, 'engines': file_engines}

print(f"TOTALI: {len(total_brands)} brand, {len(total_models)} modelli, {total_engines} motorizzazioni\n")
for fname, s in sorted(summary.items(), key=lambda x: -x[1]['engines']):
    print(f"{fname:45s} -> {s['brands']:3d} brand, {s['models']:4d} modelli, {s['engines']:5d} motorizzazioni")

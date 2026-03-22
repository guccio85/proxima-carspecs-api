"""
Genera SQL per aggiungere model_id alias intuitivi per i modelli più cercati.
I model_id nei JSON usano naming interno (hyundai_kona2, hyu_ioniq6, ecc.)
ma gli utenti cercano: kona_electric, ioniq_6, model_3, golf_8, ecc.
"""
import json, os

data_dir = "/Users/proximasuite/Desktop/ProximaDrivers/src/data/vehicles/"

def load(fname):
    with open(os.path.join(data_dir, fname)) as f:
        return json.load(f)

def brand_info(brands, brand_id):
    return next((b for b in brands if b.get('id') == brand_id), None)

def model_info(brand, model_id):
    return next((m for m in brand.get('models', []) if m.get('id') == model_id), None)

def sql_rows(brand_id, brand_name, brand_country, alias_model_id, model_name, body_type, year_start, year_end, engines, vehicle_type, region):
    rows = []
    ye = 'NULL' if year_end is None else str(year_end)
    for e in engines:
        cc = 'NULL' if e.get('cc') is None else str(e.get('cc'))
        hp = e.get('hp', 0) or 0
        fuel = e.get('fuel', 'gasoline')
        ename = e.get('name', '').replace("'", "''")
        mname = model_name.replace("'", "''")
        rows.append(
            f"  (gen_random_uuid(), '{brand_id}', '{brand_name}', '{brand_country}', "
            f"'{alias_model_id}', '{mname}', '{body_type}', "
            f"{year_start}, {ye}, '{ename}', {hp}, {cc}, '{fuel}', '{vehicle_type}', '{region}')"
        )
    return rows

all_rows = []

# ──────────────────────────────────────────────
# TESLA — model_id intuitivi
# ──────────────────────────────────────────────
ev = load('vehicles_ev_modern.json')
ev_brands = ev['brands']

tesla = brand_info(ev_brands, 'tesla')
if tesla:
    aliases = {
        'model_3': 'tesla_model3',
        'model_y': 'tesla_model_y',
        'model_s': 'tesla_model_s',
        'model_x': 'tesla_model_x',
        'cybertruck': 'tesla_cybertruck',
    }
    for alias, orig_id in aliases.items():
        m = model_info(tesla, orig_id)
        if m:
            all_rows += sql_rows('tesla', 'Tesla', 'USA', alias, m['name'],
                m.get('body','suv'), m['years']['start'], m['years'].get('end'),
                m['engines'], 'car', 'USA')

# ──────────────────────────────────────────────
# VW — alias golf_8, id_3, id_4, id_buzz
# ──────────────────────────────────────────────
de = load('vehicles_de.json')
de_brands = de['brands']

vw = brand_info(de_brands, 'volkswagen')
if vw:
    vw_aliases = {
        'golf_8': ['vw_golf8', 'golf_8'],
        'id_3': ['vw_id3', 'id_3', 'vw_id_3'],
        'id_4': ['vw_id4', 'vw_id_4'],
        'id_buzz': ['vw_id_buzz'],
        'tiguan_2': ['vw_tiguan2', 'vw_tiguan_3'],
        'polo_aw': ['vw_polo6', 'vw_polo_aw'],
        'passat_b9': ['vw_passat_b9'],
        'touareg_cr': ['vw_touareg3'],
    }
    for alias, orig_ids in vw_aliases.items():
        m = None
        for oid in orig_ids:
            m = model_info(vw, oid)
            if m: break
        if m:
            all_rows += sql_rows('volkswagen', 'Volkswagen', 'Germany', alias, m['name'],
                m.get('body','berlina'), m['years']['start'], m['years'].get('end'),
                m['engines'], 'car', 'Germany')

# ──────────────────────────────────────────────
# BMW — serie intuitivi
# ──────────────────────────────────────────────
bmw = brand_info(de_brands, 'bmw')
if bmw:
    bmw_aliases = {
        'serie_3_g20': ['bmw_3er_g20'],
        'serie_5_g60': ['bmw_5er_g60'],
        'x5_g05': ['bmw_x5_g05'],
        'ix': ['bmw_ix'],
        'ix3': ['bmw_ix3'],
        'm3_g80': ['bmw_m3_g80'],
        'm5_g90': ['bmw_m5_g90'],
    }
    for alias, orig_ids in bmw_aliases.items():
        m = None
        for oid in orig_ids:
            m = model_info(bmw, oid)
            if m: break
        if m:
            all_rows += sql_rows('bmw', 'BMW', 'Germany', alias, m['name'],
                m.get('body','berlina'), m['years']['start'], m['years'].get('end'),
                m['engines'], 'car', 'Germany')

# ──────────────────────────────────────────────
# MERCEDES
# ──────────────────────────────────────────────
mb = brand_info(de_brands, 'mercedes')
if not mb:
    mb = brand_info(de_brands, 'mercedes_benz')
if mb:
    mb_aliases = {
        'classe_a_w177': ['mb_a_w177'],
        'classe_c_w206': ['mb_c_w206'],
        'classe_e_w214': ['mb_e_w214'],
        'gle_w167': ['mb_gle_w167'],
        'eqc': ['mb_eqc'],
        'eq_s': ['mb_eqs'],
    }
    for alias, orig_ids in mb_aliases.items():
        m = None
        for oid in orig_ids:
            m = model_info(mb, oid)
            if m: break
        if m:
            bname = mb.get('name', 'Mercedes-Benz')
            all_rows += sql_rows(mb.get('id','mercedes'), bname, 'Germany', alias, m['name'],
                m.get('body','berlina'), m['years']['start'], m['years'].get('end'),
                m['engines'], 'car', 'Germany')

# ──────────────────────────────────────────────
# KR/CN — Kia, Genesis alias
# ──────────────────────────────────────────────
krcn = load('vehicles_kr_cn.json')
krcn_brands = krcn['brands']

kia = brand_info(krcn_brands, 'kia')
if kia:
    kia_aliases = {
        'ev6': ['kia_ev6'],
        'ev9': ['kia_ev9'],
        'sportage_5': ['kia_sportage5'],
        'sorento_4': ['kia_sorento4'],
        'stinger': ['kia_stinger'],
    }
    for alias, orig_ids in kia_aliases.items():
        m = None
        for oid in orig_ids:
            m = model_info(kia, oid)
            if m: break
        if m:
            all_rows += sql_rows('kia', 'Kia', 'South Korea', alias, m['name'],
                m.get('body','suv'), m['years']['start'], m['years'].get('end'),
                m['engines'], 'car', 'South Korea')

# ──────────────────────────────────────────────
# TOYOTA/LEXUS JP
# ──────────────────────────────────────────────
jp = load('vehicles_jp.json')
jp_brands = jp['brands']

toyota = brand_info(jp_brands, 'toyota')
if toyota:
    toyota_aliases = {
        'rav4_5': ['toyota_rav4_5'],
        'yaris_4': ['toyota_yaris_4', 'toyota_yaris4'],
        'corolla_e21': ['toyota_corolla_e21'],
        'gr_yaris': ['toyota_gr_yaris'],
        'supra_a90': ['toyota_supra_a90'],
        'bz4x': ['toyota_bz4x'],
        'land_cruiser_300': ['toyota_landcruiser_300'],
    }
    for alias, orig_ids in toyota_aliases.items():
        m = None
        for oid in orig_ids:
            m = model_info(toyota, oid)
            if m: break
        if m:
            all_rows += sql_rows('toyota', 'Toyota', 'Japan', alias, m['name'],
                m.get('body','berlina'), m['years']['start'], m['years'].get('end'),
                m['engines'], 'car', 'Japan')

# ──────────────────────────────────────────────
# MOTO — alias comuni
# ──────────────────────────────────────────────
moto = load('vehicles_moto.json')
moto_brands = moto['brands']

ducati = brand_info(moto_brands, 'ducati')
if ducati:
    ducati_aliases = {
        'panigale_v4': ['ducati_panigale_v4'],
        'monster_937': ['ducati_monster_937', 'ducati_monster937'],
        'multistrada_v4': ['ducati_multistrada_v4'],
    }
    for alias, orig_ids in ducati_aliases.items():
        m = None
        for oid in orig_ids:
            m = model_info(ducati, oid)
            if m: break
        if m:
            all_rows += sql_rows('ducati', 'Ducati', 'Italy', alias, m['name'],
                m.get('body','naked'), m['years']['start'], m['years'].get('end'),
                m['engines'], 'motorcycle', 'Italy')

honda_moto = brand_info(moto_brands, 'honda')
if honda_moto:
    honda_moto_aliases = {
        'cbr1000rr': ['honda_cbr1000rr_sc82'],
        'africa_twin': ['honda_africa_twin_2020', 'honda_africa_crf1100'],
        'cb650r': ['honda_cb650r_rh02'],
    }
    for alias, orig_ids in honda_moto_aliases.items():
        m = None
        for oid in orig_ids:
            m = model_info(honda_moto, oid)
            if m: break
        if m:
            all_rows += sql_rows('honda', 'Honda', 'Japan', alias, m['name'],
                m.get('body','sportiva'), m['years']['start'], m['years'].get('end'),
                m['engines'], 'motorcycle', 'Japan')

# ──────────────────────────────────────────────
# OUTPUT SQL
# ──────────────────────────────────────────────
print(f"-- {len(all_rows)} righe da inserire")
if all_rows:
    print("INSERT INTO vehicle_specs")
    print("  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)")
    print("VALUES")
    print(",\n".join(all_rows))
    print("ON CONFLICT DO NOTHING;")
print(f"\n-- Fine: {len(all_rows)} motorizzazioni aggiunte come alias model_id intuitivi")

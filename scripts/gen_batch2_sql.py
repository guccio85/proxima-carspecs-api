import json, os

data_dir = "/Users/proximasuite/Desktop/ProximaDrivers/src/data/vehicles/"

def load(fname):
    with open(os.path.join(data_dir, fname)) as f:
        return json.load(f)

def brand_info(brands, brand_id):
    return next((b for b in brands if b.get('id') == brand_id), None)

def model_info(brand, *ids):
    for mid in ids:
        m = next((m for m in brand.get('models', []) if m.get('id') == mid), None)
        if m:
            return m
    return None

def rows(brand_id, brand_name, brand_country, alias_id, m, vtype, region):
    if not m:
        return []
    ye = 'NULL' if m['years'].get('end') is None else str(m['years']['end'])
    out = []
    for e in m.get('engines', []):
        cc = 'NULL' if e.get('cc') is None else str(e.get('cc'))
        hp = e.get('hp', 0) or 0
        fuel = e.get('fuel', 'gasoline')
        ename = e.get('name', '').replace("'", "''")
        mname = m['name'].replace("'", "''")
        body = m.get('body', 'berlina')
        out.append(
            f"  (gen_random_uuid(), '{brand_id}', '{brand_name}', '{brand_country}', "
            f"'{alias_id}', '{mname}', '{body}', "
            f"{m['years']['start']}, {ye}, '{ename}', {hp}, {cc}, '{fuel}', '{vtype}', '{region}')"
        )
    return out

all_rows = []

# ── AUDI (vehicles_de.json) ──────────────────────────
de = load('vehicles_de.json')
de_b = de['brands']
audi = brand_info(de_b, 'audi')
if audi:
    audi_map = {
        'a3_8y':    ['audi_a3_8y'],
        'a4_b9':    ['audi_a4_b9_facelift', 'audi_a4_b9'],
        'a6_c8':    ['audi_a6_c8_facelift', 'audi_a6_c8'],
        'q5_fy':    ['audi_q5_fy_facelift', 'audi_q5_fy'],
        'q7_4m':    ['audi_q7_4m_facelift', 'audi_q7_4m'],
        'q8_4m':    ['audi_q8_4m'],
        'rs6_c8':   ['audi_rs6_c8'],
        'rs3_8y':   ['audi_rs3_8y'],
        'e_tron':   ['audi_etron_ge', 'audi_q8_etron'],
        'e_tron_gt':['audi_etron_gt'],
        'tt_8s':    ['audi_tt_8s'],
        'r8_4s':    ['audi_r8_4s'],
    }
    for alias, orig_ids in audi_map.items():
        m = model_info(audi, *orig_ids)
        all_rows += rows('audi', 'Audi', 'Germany', alias, m, 'car', 'Germany')

# ── PORSCHE (vehicles_de.json) ───────────────────────
porsche = brand_info(de_b, 'porsche')
if porsche:
    por_map = {
        '911_992':      ['por_911_992'],
        'taycan':       ['por_taycan'],
        'macan_ev':     ['por_macan_ev'],
        'cayenne_9ya':  ['por_cayenne_9ya'],
        'panamera_g2':  ['por_panamera_g2'],
        'boxster_718':  ['por_718_boxster'],
    }
    for alias, orig_ids in por_map.items():
        m = model_info(porsche, *orig_ids)
        all_rows += rows('porsche', 'Porsche', 'Germany', alias, m, 'car', 'Germany')

# ── OPEL (vehicles_de.json) ──────────────────────────
opel = brand_info(de_b, 'opel')
if opel:
    opel_map = {
        'astra_l':      ['opel_astra_l'],
        'corsa_f':      ['opel_corsa_f'],
        'grandland':    ['opel_grandland'],
        'mokka_b':      ['opel_mokka_b'],
    }
    for alias, orig_ids in opel_map.items():
        m = model_info(opel, *orig_ids)
        all_rows += rows('opel', 'Opel', 'Germany', alias, m, 'car', 'Germany')

# ── FERRARI / LAMBORGHINI (vehicles_it.json) ─────────
it = load('vehicles_it.json')
it_b = it['brands']

ferrari = brand_info(it_b, 'ferrari')
if ferrari:
    fer_map = {
        '296_gtb':      ['ferrari_296gtb'],
        'sf90':         ['ferrari_sf90'],
        'f8_tributo':   ['ferrari_f8'],
        'roma':         ['ferrari_roma'],
        'purosangue':   ['ferrari_purosangue'],
        '812_superfast':['ferrari_812'],
    }
    for alias, orig_ids in fer_map.items():
        m = model_info(ferrari, *orig_ids)
        all_rows += rows('ferrari', 'Ferrari', 'Italy', alias, m, 'car', 'Italy')

lambo = brand_info(it_b, 'lamborghini')
if lambo:
    lam_map = {
        'revuelto':     ['lambo_revuelto'],
        'urus_s':       ['lambo_urus'],
        'huracan':      ['lambo_huracan'],
        'huracan_sto':  ['lambo_huracan_tecnica'],
    }
    for alias, orig_ids in lam_map.items():
        m = model_info(lambo, *orig_ids)
        all_rows += rows('lamborghini', 'Lamborghini', 'Italy', alias, m, 'car', 'Italy')

# Alfa Romeo
alfa = brand_info(it_b, 'alfa_romeo')
if alfa:
    alfa_map = {
        'giulia':       ['giulia_952'],
        'stelvio':      ['stelvio'],
        'tonale':       ['tonale'],
        'giulietta':    ['giulietta_940'],
    }
    for alias, orig_ids in alfa_map.items():
        m = model_info(alfa, *orig_ids)
        all_rows += rows('alfa_romeo', 'Alfa Romeo', 'Italy', alias, m, 'car', 'Italy')

# ── RENAULT / PEUGEOT / DACIA (vehicles_fr_es.json) ──
fr = load('vehicles_fr_es.json')
fr_b = fr['brands']

renault = brand_info(fr_b, 'renault')
if renault:
    ren_map = {
        'clio_5':       ['ren_clio_5'],
        'megane_e':     ['ren_megane_e'],
        'austral':      ['ren_austral'],
        'zoe':          ['ren_zoe'],
        'captur_2':     ['ren_captur_2'],
        'arkana':       ['ren_arkana'],
        'r5_e':         ['ren_5_e'],
    }
    for alias, orig_ids in ren_map.items():
        m = model_info(renault, *orig_ids)
        all_rows += rows('renault', 'Renault', 'France', alias, m, 'car', 'France')

peugeot = brand_info(fr_b, 'peugeot')
if peugeot:
    peu_map = {
        '208_b':        ['peu_208_b'],
        '308_p5':       ['peu_308_p5'],
        '2008_b':       ['peu_2008'],
        '3008_p5':      ['peu_3008_p5'],
        '408':          ['peu_408'],
    }
    for alias, orig_ids in peu_map.items():
        m = model_info(peugeot, *orig_ids)
        all_rows += rows('peugeot', 'Peugeot', 'France', alias, m, 'car', 'France')

dacia = brand_info(fr_b, 'dacia')
if dacia:
    dac_map = {
        'sandero_3':    ['dacia_sandero_iii'],
        'duster_3':     ['dacia_duster_iii'],
        'jogger':       ['dacia_jogger'],
        'spring':       ['dacia_spring'],
    }
    for alias, orig_ids in dac_map.items():
        m = model_info(dacia, *orig_ids)
        all_rows += rows('dacia', 'Dacia', 'Romania', alias, m, 'car', 'Romania')

# ── LAND ROVER / JAGUAR / VOLVO (vehicles_uk_nord.json) ──
uk = load('vehicles_uk_nord.json')
uk_b = uk['brands']

lr = brand_info(uk_b, 'land_rover')
if lr:
    lr_map = {
        'defender_90':  ['lr_defender_90'],
        'range_rover_5':['lr_range_rover5'],
        'rr_sport_3':   ['lr_rr_sport3'],
        'discovery_5':  ['lr_discovery5'],
        'evoque_2':     ['lr_rr_evoque2'],
    }
    for alias, orig_ids in lr_map.items():
        m = model_info(lr, *orig_ids)
        all_rows += rows('land_rover', 'Land Rover', 'UK', alias, m, 'car', 'UK')

volvo = brand_info(uk_b, 'volvo')
if volvo:
    vol_map = {
        'xc40_ev':      ['vol_xc40_bev'],
        'xc60':         ['vol_xc60_b'],
        'xc90':         ['vol_xc90_b'],
        'ex90':         ['vol_ex90'],
    }
    for alias, orig_ids in vol_map.items():
        m = model_info(volvo, *orig_ids)
        all_rows += rows('volvo', 'Volvo', 'Sweden', alias, m, 'car', 'Sweden')

# ── FORD / CHEVROLET (vehicles_us.json) ──────────────
us = load('vehicles_us.json')
us_b = us['brands']

ford = brand_info(us_b, 'ford')
if ford:
    ford_map = {
        'mustang_s650': ['ford_mustang_s650'],
        'mustang_mache': ['ford_mustang_mache'],
        'f150':         ['ford_f150_xp'],
        'f150_lightning': ['ford_f150_lightning'],
        'bronco':       ['ford_bronco_6gen'],
        'explorer':     ['ford_explorer_6gen'],
    }
    for alias, orig_ids in ford_map.items():
        m = model_info(ford, *orig_ids)
        all_rows += rows('ford', 'Ford', 'USA', alias, m, 'car', 'USA')

chevrolet = brand_info(us_b, 'chevrolet')
if chevrolet:
    chev_map = {
        'corvette_c8':  ['chev_corvette_c8'],
        'camaro_6':     ['chev_camaro6'],
        'silverado_ev': ['chev_silverado_ev'],
        'tahoe':        ['chev_tahoe5'],
        'bolt_ev':      ['chev_bolt_ev'],
    }
    for alias, orig_ids in chev_map.items():
        m = model_info(chevrolet, *orig_ids)
        all_rows += rows('chevrolet', 'Chevrolet', 'USA', alias, m, 'car', 'USA')

# ── HONDA / NISSAN / MAZDA (vehicles_jp.json) ────────
jp = load('vehicles_jp.json')
jp_b = jp['brands']

honda = brand_info(jp_b, 'honda')
if honda:
    hon_map = {
        'civic_11':     ['honda_civic_11'],
        'cr_v6':        ['honda_cr_v6'],
        'hr_v3':        ['honda_hr_v3'],
        'jazz_4':       ['honda_jazz_4'],
        'accord_11':    ['honda_accord_11'],
    }
    for alias, orig_ids in hon_map.items():
        m = model_info(honda, *orig_ids)
        all_rows += rows('honda', 'Honda', 'Japan', alias, m, 'car', 'Japan')

nissan = brand_info(jp_b, 'nissan')
if nissan:
    nis_map = {
        'qashqai_j12':  ['nissan_qashqai_j12'],
        'ariya':        ['nissan_ariya'],
        'leaf':         ['nissan_leaf'],
        'gt_r':         ['nissan_gt_r'],
        'z_rz34':       ['nissan_z_rz34'],
    }
    for alias, orig_ids in nis_map.items():
        m = model_info(nissan, *orig_ids)
        all_rows += rows('nissan', 'Nissan', 'Japan', alias, m, 'car', 'Japan')

mazda = brand_info(jp_b, 'mazda')
if mazda:
    maz_map = {
        'mx5_nd':       ['mazda_mx5_nd'],
        'cx5':          ['mazda_cx5'],
        'cx30':         ['mazda_cx30'],
        'mazda3':       ['mazda_mazda3'],
        'cx60':         ['mazda_cx60'],
    }
    for alias, orig_ids in maz_map.items():
        m = model_info(mazda, *orig_ids)
        all_rows += rows('mazda', 'Mazda', 'Japan', alias, m, 'car', 'Japan')

# ── MOTO: BMW Motorrad / Yamaha / Kawasaki / Aprilia ─
moto = load('vehicles_moto.json')
moto_b = moto['brands']

bmw_m = brand_info(moto_b, 'bmw_motorrad')
if bmw_m:
    bmwm_map = {
        'r1300gs':      ['bmw_r1300gs'],
        'r1250gs':      ['bmw_r1250gs'],
        's1000rr':      ['bmw_s1000rr'],
        's1000r':       ['bmw_s1000r'],
        'f900r':        ['bmw_f900r'],
        'm1000rr':      ['bmw_m1000rr'],
    }
    for alias, orig_ids in bmwm_map.items():
        m = model_info(bmw_m, *orig_ids)
        all_rows += rows('bmw_motorrad', 'BMW Motorrad', 'Germany', alias, m, 'motorcycle', 'Germany')

yamaha = brand_info(moto_b, 'yamaha_moto')
if yamaha:
    yam_map = {
        'r1':           ['yam_r1'],
        'mt09':         ['yam_mt09'],
        'mt07':         ['yam_mt07'],
        'tenere700':    ['yam_tenere700'],
        'tracer9':      ['yam_tracer9'],
        'nmax':         ['yam_nmax'],
    }
    for alias, orig_ids in yam_map.items():
        m = model_info(yamaha, *orig_ids)
        all_rows += rows('yamaha', 'Yamaha', 'Japan', alias, m, 'motorcycle', 'Japan')

kawasaki = brand_info(moto_b, 'kawasaki')
if kawasaki:
    kaw_map = {
        'zx10r':        ['kawa_zx10r'],
        'z900':         ['kawa_z900'],
        'z650':         ['kawa_z650'],
        'h2':           ['kawa_h2'],
        'versys1000':   ['kawa_versys1000'],
        'ninja_zx6r':   ['kawa_zx6r'],
    }
    for alias, orig_ids in kaw_map.items():
        m = model_info(kawasaki, *orig_ids)
        all_rows += rows('kawasaki', 'Kawasaki', 'Japan', alias, m, 'motorcycle', 'Japan')

aprilia = brand_info(moto_b, 'aprilia')
if aprilia:
    apr_map = {
        'rsv4':         ['aprilia_rsv4'],
        'tuono_v4':     ['aprilia_tuono_v4'],
        'rs660':        ['aprilia_rs660'],
        'tuono660':     ['aprilia_tuono660'],
    }
    for alias, orig_ids in apr_map.items():
        m = model_info(aprilia, *orig_ids)
        all_rows += rows('aprilia', 'Aprilia', 'Italy', alias, m, 'motorcycle', 'Italy')

# ── OUTPUT SQL ────────────────────────────────────────
print(f"-- {len(all_rows)} righe da inserire")
if all_rows:
    print("INSERT INTO vehicle_specs")
    print("  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)")
    print("VALUES")
    print(",\n".join(all_rows))
    print("ON CONFLICT DO NOTHING;")
print(f"\n-- Fine: {len(all_rows)} motorizzazioni — batch 2")

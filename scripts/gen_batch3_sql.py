#!/usr/bin/env python3
"""
Batch 3: Hyundai, Genesis, BYD, Citroën, Seat, Cupra, Skoda,
         Fiat, Lancia, Abarth, Jeep, Dodge, Ram, Cadillac,
         Subaru, Mitsubishi, Suzuki auto, Lexus,
         KTM, Triumph, Harley-Davidson, Royal Enfield, Suzuki moto
"""
import json, uuid, os, sys

BASE = '/Users/proximasuite/Desktop/ProximaDrivers/src/data/vehicles/'

def load(filename):
    with open(BASE + filename) as f:
        return json.load(f)

rows = []

def add(brand_id, brand_name, brand_country, model_id, model_name,
        body_type, year_start, year_end, engine_name, hp, cc,
        fuel_type, vehicle_type, region):
    rows.append(
        f"  (gen_random_uuid(), '{brand_id}', '{brand_name}', '{brand_country}', "
        f"'{model_id}', '{model_name}', '{body_type}', {year_start}, {year_end}, "
        f"'{engine_name}', {hp}, {'NULL' if cc is None else cc}, "
        f"'{fuel_type}', '{vehicle_type}', '{region}')"
    )

# ─── HYUNDAI ──────────────────────────────────────────────────────────────────
# IONIQ 5
add('hyundai','Hyundai','South Korea','ioniq5','IONIQ 5 (NE1)','suv',2021,2026,'Elettrico RWD 170cv 58kWh',170,None,'electric','car','South Korea')
add('hyundai','Hyundai','South Korea','ioniq5','IONIQ 5 (NE1)','suv',2021,2026,'Elettrico RWD 217cv 77.4kWh',217,None,'electric','car','South Korea')
add('hyundai','Hyundai','South Korea','ioniq5','IONIQ 5 (NE1)','suv',2021,2026,'Elettrico AWD 325cv 77.4kWh',325,None,'electric','car','South Korea')
add('hyundai','Hyundai','South Korea','ioniq5','IONIQ 5 (NE1)','suv',2021,2026,'Elettrico AWD 601cv N Edition',601,None,'electric','car','South Korea')
# IONIQ 6
add('hyundai','Hyundai','South Korea','ioniq6','IONIQ 6 (CE1)','berlina',2022,2026,'Elettrico RWD 151cv 53kWh',151,None,'electric','car','South Korea')
add('hyundai','Hyundai','South Korea','ioniq6','IONIQ 6 (CE1)','berlina',2022,2026,'Elettrico RWD 229cv 77.4kWh',229,None,'electric','car','South Korea')
add('hyundai','Hyundai','South Korea','ioniq6','IONIQ 6 (CE1)','berlina',2022,2026,'Elettrico AWD 325cv 77.4kWh',325,None,'electric','car','South Korea')
# Tucson
add('hyundai','Hyundai','South Korea','tucson_nx4','Tucson (NX4 — 2021+)','suv',2021,2026,'1.6 T-GDi 150cv',150,1598,'gasoline','car','South Korea')
add('hyundai','Hyundai','South Korea','tucson_nx4','Tucson (NX4 — 2021+)','suv',2021,2026,'1.6 T-GDi HEV 230cv Hybrid',230,1598,'hybrid','car','South Korea')
add('hyundai','Hyundai','South Korea','tucson_nx4','Tucson (NX4 — 2021+)','suv',2021,2026,'1.6 T-GDi MHEV 180cv 48V',180,1598,'mild_hybrid','car','South Korea')
add('hyundai','Hyundai','South Korea','tucson_nx4','Tucson (NX4 — 2021+)','suv',2021,2026,'1.6 T-GDi PHEV 265cv 4WD',265,1598,'plug_in_hybrid','car','South Korea')
add('hyundai','Hyundai','South Korea','tucson_nx4','Tucson (NX4 — 2021+)','suv',2021,2026,'2.0 CRDi 136cv',136,1995,'diesel','car','South Korea')
add('hyundai','Hyundai','South Korea','tucson_nx4','Tucson (NX4 — 2021+)','suv',2021,2026,'1.6 CRDi 136cv MHEV 48V',136,1598,'diesel','car','South Korea')
# Santa Fe
add('hyundai','Hyundai','South Korea','santa_fe5','Santa Fe (MX5 — 2024+)','suv',2024,2026,'1.6 T-GDi PHEV 252cv 4WD',252,1598,'plug_in_hybrid','car','South Korea')
add('hyundai','Hyundai','South Korea','santa_fe5','Santa Fe (MX5 — 2024+)','suv',2024,2026,'2.5 MPi HEV 215cv',215,2497,'hybrid','car','South Korea')
add('hyundai','Hyundai','South Korea','santa_fe5','Santa Fe (MX5 — 2024+)','suv',2024,2026,'2.2 CRDi 202cv 4WD',202,2199,'diesel','car','South Korea')
# i30
add('hyundai','Hyundai','South Korea','i30_pd','i30 / i30 N (PD)','hatchback',2017,2026,'1.0 T-GDi 120cv',120,998,'gasoline','car','South Korea')
add('hyundai','Hyundai','South Korea','i30_pd','i30 / i30 N (PD)','hatchback',2017,2026,'1.5 T-GDi MHEV 160cv',160,1482,'mild_hybrid','car','South Korea')
add('hyundai','Hyundai','South Korea','i30_pd','i30 / i30 N (PD)','hatchback',2017,2026,'2.0 T-GDi 280cv N',280,1998,'gasoline','car','South Korea')
add('hyundai','Hyundai','South Korea','i30_pd','i30 / i30 N (PD)','hatchback',2017,2026,'2.0 T-GDi 300cv N Performance',300,1998,'gasoline','car','South Korea')
add('hyundai','Hyundai','South Korea','i30_pd','i30 / i30 N (PD)','hatchback',2017,2026,'1.6 CRDi 136cv',136,1598,'diesel','car','South Korea')

# ─── GENESIS ──────────────────────────────────────────────────────────────────
add('genesis','Genesis','South Korea','gv60','GV60','suv',2022,2026,'Elettrico RWD 226cv Standard',226,None,'electric','car','South Korea')
add('genesis','Genesis','South Korea','gv60','GV60','suv',2022,2026,'Elettrico AWD 320cv',320,None,'electric','car','South Korea')
add('genesis','Genesis','South Korea','gv60','GV60','suv',2022,2026,'Elettrico AWD 490cv Magma',490,None,'electric','car','South Korea')
add('genesis','Genesis','South Korea','gv70','GV70 / Electrified GV70','suv',2021,2026,'2.0T 304cv',304,1999,'gasoline','car','South Korea')
add('genesis','Genesis','South Korea','gv70','GV70 / Electrified GV70','suv',2021,2026,'2.5T 380cv',380,2497,'gasoline','car','South Korea')
add('genesis','Genesis','South Korea','gv70','GV70 / Electrified GV70','suv',2021,2026,'Elettrico AWD 360cv e-GV70',360,None,'electric','car','South Korea')
add('genesis','Genesis','South Korea','gv80','GV80','suv',2020,2026,'2.5T 300cv',300,2497,'gasoline','car','South Korea')
add('genesis','Genesis','South Korea','gv80','GV80','suv',2020,2026,'3.5T V6 380cv',380,3470,'gasoline','car','South Korea')
add('genesis','Genesis','South Korea','gv80','GV80','suv',2020,2026,'3.0 CRDi 278cv',278,2999,'diesel','car','South Korea')
add('genesis','Genesis','South Korea','g70_ik','G70 / G70 Shooting Brake','berlina',2018,2026,'2.0T 252cv',252,1998,'gasoline','car','South Korea')
add('genesis','Genesis','South Korea','g70_ik','G70 / G70 Shooting Brake','berlina',2018,2026,'3.3T V6 370cv',370,3342,'gasoline','car','South Korea')
add('genesis','Genesis','South Korea','g80_rg3','G80 (RG3)','berlina',2020,2026,'2.5T 304cv',304,2497,'gasoline','car','South Korea')
add('genesis','Genesis','South Korea','g80_rg3','G80 (RG3)','berlina',2020,2026,'Elettrico AWD 365cv e-G80',365,None,'electric','car','South Korea')

# ─── BYD ──────────────────────────────────────────────────────────────────────
add('byd','BYD','China','atto3','Atto 3 (EV)','suv',2022,2026,'Elettrico FWD 204cv 49.9kWh',204,None,'electric','car','China')
add('byd','BYD','China','atto3','Atto 3 (EV)','suv',2022,2026,'Elettrico FWD 204cv 60.5kWh',204,None,'electric','car','China')
add('byd','BYD','China','seal_byd','Seal (BEV)','berlina',2022,2026,'Elettrico RWD 313cv',313,None,'electric','car','China')
add('byd','BYD','China','seal_byd','Seal (BEV)','berlina',2022,2026,'Elettrico AWD 530cv Dual Motor',530,None,'electric','car','China')
add('byd','BYD','China','dolphin_byd','Dolphin (BEV)','hatchback',2021,2026,'Elettrico FWD 95cv 30.7kWh',95,None,'electric','car','China')
add('byd','BYD','China','dolphin_byd','Dolphin (BEV)','hatchback',2021,2026,'Elettrico FWD 150cv 44.9kWh',150,None,'electric','car','China')
add('byd','BYD','China','han_ev','Han EV','berlina',2020,2026,'Elettrico AWD 517cv',517,None,'electric','car','China')
add('byd','BYD','China','tang_ev','Tang EV','suv',2018,2026,'Elettrico AWD 476cv',476,None,'electric','car','China')

# ─── CITROËN ──────────────────────────────────────────────────────────────────
add('citroen','Citroën','France','c3_aircross','C3 Aircross (2ª gen)','suv',2017,2026,'1.2 PureTech 110cv',110,1199,'gasoline','car','France')
add('citroen','Citroën','France','c3_aircross','C3 Aircross (2ª gen)','suv',2017,2026,'1.2 PureTech 130cv EAT6',130,1199,'gasoline','car','France')
add('citroen','Citroën','France','c3_aircross','C3 Aircross (2ª gen)','suv',2017,2026,'1.5 BlueHDi 110cv',110,1499,'diesel','car','France')
add('citroen','Citroën','France','c3_iv','C3 (IV gen — 2024+)','hatchback',2024,2026,'1.2 PureTech 83cv',83,1199,'gasoline','car','France')
add('citroen','Citroën','France','c3_iv','C3 (IV gen — 2024+)','hatchback',2024,2026,'Elettrico 113cv ë-C3',113,None,'electric','car','France')
add('citroen','Citroën','France','c4_iii','C4 / ë-C4 (III gen)','hatchback',2020,2026,'1.2 PureTech 130cv',130,1199,'gasoline','car','France')
add('citroen','Citroën','France','c4_iii','C4 / ë-C4 (III gen)','hatchback',2020,2026,'1.5 BlueHDi 110cv',110,1499,'diesel','car','France')
add('citroen','Citroën','France','c4_iii','C4 / ë-C4 (III gen)','hatchback',2020,2026,'Elettrico 136cv ë-C4',136,None,'electric','car','France')
add('citroen','Citroën','France','c4_iii','C4 / ë-C4 (III gen)','hatchback',2020,2026,'Elettrico 156cv ë-C4 2024',156,None,'electric','car','France')
add('citroen','Citroën','France','c5_aircross','C5 Aircross (2ª gen)','suv',2019,2026,'1.2 PureTech 130cv',130,1199,'gasoline','car','France')
add('citroen','Citroën','France','c5_aircross','C5 Aircross (2ª gen)','suv',2019,2026,'1.6 PHEV 225cv Hybrid',225,1598,'plug_in_hybrid','car','France')
add('citroen','Citroën','France','c5_aircross','C5 Aircross (2ª gen)','suv',2019,2026,'1.5 BlueHDi 130cv',130,1499,'diesel','car','France')

# ─── SEAT ─────────────────────────────────────────────────────────────────────
add('seat','SEAT','Spain','ibiza_kj','Ibiza (KJ — 2017+)','hatchback',2017,2026,'1.0 MPI 80cv',80,999,'gasoline','car','Spain')
add('seat','SEAT','Spain','ibiza_kj','Ibiza (KJ — 2017+)','hatchback',2017,2026,'1.0 TSI 95cv',95,999,'gasoline','car','Spain')
add('seat','SEAT','Spain','ibiza_kj','Ibiza (KJ — 2017+)','hatchback',2017,2026,'1.0 TSI 110cv',110,999,'gasoline','car','Spain')
add('seat','SEAT','Spain','ibiza_kj','Ibiza (KJ — 2017+)','hatchback',2017,2026,'1.5 TSI 150cv FR',150,1498,'gasoline','car','Spain')
add('seat','SEAT','Spain','ibiza_kj','Ibiza (KJ — 2017+)','hatchback',2017,2026,'1.5 TSI 150cv FR DSG',150,1498,'gasoline','car','Spain')
add('seat','SEAT','Spain','leon_kl','Leon (KL — 4ª gen)','hatchback',2020,2026,'1.0 TSI 110cv',110,999,'gasoline','car','Spain')
add('seat','SEAT','Spain','leon_kl','Leon (KL — 4ª gen)','hatchback',2020,2026,'1.5 TSI 150cv FR',150,1498,'gasoline','car','Spain')
add('seat','SEAT','Spain','leon_kl','Leon (KL — 4ª gen)','hatchback',2020,2026,'2.0 TSI 190cv FR',190,1984,'gasoline','car','Spain')
add('seat','SEAT','Spain','leon_kl','Leon (KL — 4ª gen)','hatchback',2020,2026,'1.4 PHEV 204cv e-HYBRID',204,1395,'plug_in_hybrid','car','Spain')
add('seat','SEAT','Spain','leon_kl','Leon (KL — 4ª gen)','hatchback',2020,2026,'2.0 TDI 115cv',115,1968,'diesel','car','Spain')
add('seat','SEAT','Spain','leon_kl','Leon (KL — 4ª gen)','hatchback',2020,2026,'2.0 TDI 150cv',150,1968,'diesel','car','Spain')
add('seat','SEAT','Spain','ateca','Ateca (KH7)','suv',2016,2026,'1.5 TSI 150cv',150,1498,'gasoline','car','Spain')
add('seat','SEAT','Spain','ateca','Ateca (KH7)','suv',2016,2026,'2.0 TSI 190cv 4Drive',190,1984,'gasoline','car','Spain')
add('seat','SEAT','Spain','ateca','Ateca (KH7)','suv',2016,2026,'2.0 TDI 150cv',150,1968,'diesel','car','Spain')

# ─── CUPRA ────────────────────────────────────────────────────────────────────
add('cupra','CUPRA','Spain','formentor','Formentor','suv',2020,2026,'1.5 TSI 150cv',150,1498,'gasoline','car','Spain')
add('cupra','CUPRA','Spain','formentor','Formentor','suv',2020,2026,'2.0 TSI 310cv 4Drive',310,1984,'gasoline','car','Spain')
add('cupra','CUPRA','Spain','formentor','Formentor','suv',2020,2026,'1.4 PHEV 245cv VZ e-HYBRID',245,1395,'plug_in_hybrid','car','Spain')
add('cupra','CUPRA','Spain','formentor','Formentor','suv',2020,2026,'2.0 TDI 150cv',150,1968,'diesel','car','Spain')
add('cupra','CUPRA','Spain','born','Born (BEV)','hatchback',2021,2026,'Elettrico RWD 204cv 58kWh',204,None,'electric','car','Spain')
add('cupra','CUPRA','Spain','born','Born (BEV)','hatchback',2021,2026,'Elettrico RWD 231cv 77kWh',231,None,'electric','car','Spain')
add('cupra','CUPRA','Spain','born','Born (BEV)','hatchback',2021,2026,'Elettrico AWD 340cv VZ e-BOOST',340,None,'electric','car','Spain')
add('cupra','CUPRA','Spain','leon_cupra','Leon Cupra / CUPRA Leon','hatchback',2020,2026,'2.0 TSI 265cv',265,1984,'gasoline','car','Spain')
add('cupra','CUPRA','Spain','leon_cupra','Leon Cupra / CUPRA Leon','hatchback',2020,2026,'2.0 TSI 300cv',300,1984,'gasoline','car','Spain')
add('cupra','CUPRA','Spain','tavascan','Tavascan (BEV 2024+)','suv',2024,2026,'Elettrico RWD 286cv 77kWh',286,None,'electric','car','Spain')
add('cupra','CUPRA','Spain','tavascan','Tavascan (BEV 2024+)','suv',2024,2026,'Elettrico AWD 340cv VZ 77kWh',340,None,'electric','car','Spain')

# ─── SKODA ────────────────────────────────────────────────────────────────────
add('skoda','Škoda','Czech Republic','octavia_nz','Octavia (NZ — 4ª gen)','berlina',2020,2026,'1.0 TSI 110cv',110,999,'gasoline','car','Czech Republic')
add('skoda','Škoda','Czech Republic','octavia_nz','Octavia (NZ — 4ª gen)','berlina',2020,2026,'1.5 TSI 150cv',150,1498,'gasoline','car','Czech Republic')
add('skoda','Škoda','Czech Republic','octavia_nz','Octavia (NZ — 4ª gen)','berlina',2020,2026,'2.0 TSI 245cv RS',245,1984,'gasoline','car','Czech Republic')
add('skoda','Škoda','Czech Republic','octavia_nz','Octavia (NZ — 4ª gen)','berlina',2020,2026,'1.4 TSI PHEV 245cv iV',245,1395,'plug_in_hybrid','car','Czech Republic')
add('skoda','Škoda','Czech Republic','octavia_nz','Octavia (NZ — 4ª gen)','berlina',2020,2026,'2.0 TDI 116cv',116,1968,'diesel','car','Czech Republic')
add('skoda','Škoda','Czech Republic','octavia_nz','Octavia (NZ — 4ª gen)','berlina',2020,2026,'2.0 TDI 150cv',150,1968,'diesel','car','Czech Republic')
add('skoda','Škoda','Czech Republic','superb_b9','Superb (B9 — 4ª gen)','berlina',2024,2026,'1.5 TSI MHEV 150cv',150,1498,'mild_hybrid','car','Czech Republic')
add('skoda','Škoda','Czech Republic','superb_b9','Superb (B9 — 4ª gen)','berlina',2024,2026,'2.0 TSI 265cv 4x4',265,1984,'gasoline','car','Czech Republic')
add('skoda','Škoda','Czech Republic','superb_b9','Superb (B9 — 4ª gen)','berlina',2024,2026,'1.5 PHEV 204cv iV',204,1498,'plug_in_hybrid','car','Czech Republic')
add('skoda','Škoda','Czech Republic','superb_b9','Superb (B9 — 4ª gen)','berlina',2024,2026,'2.0 TDI 150cv',150,1968,'diesel','car','Czech Republic')
add('skoda','Škoda','Czech Republic','enyaq','Enyaq iV / Coupé RS','suv',2020,2026,'Elettrico RWD 175cv 60kWh iV 60',175,None,'electric','car','Czech Republic')
add('skoda','Škoda','Czech Republic','enyaq','Enyaq iV / Coupé RS','suv',2020,2026,'Elettrico RWD 204cv 82kWh iV 80',204,None,'electric','car','Czech Republic')
add('skoda','Škoda','Czech Republic','enyaq','Enyaq iV / Coupé RS','suv',2020,2026,'Elettrico AWD 299cv RS 82kWh',299,None,'electric','car','Czech Republic')
add('skoda','Škoda','Czech Republic','kodiaq_ns','Kodiaq (NS — 2ª gen)','suv',2024,2026,'1.5 TSI MHEV 150cv',150,1498,'mild_hybrid','car','Czech Republic')
add('skoda','Škoda','Czech Republic','kodiaq_ns','Kodiaq (NS — 2ª gen)','suv',2024,2026,'2.0 TSI 4x4 265cv DSG',265,1984,'gasoline','car','Czech Republic')
add('skoda','Škoda','Czech Republic','kodiaq_ns','Kodiaq (NS — 2ª gen)','suv',2024,2026,'1.5 eTSI PHEV 204cv iV',204,1498,'plug_in_hybrid','car','Czech Republic')
add('skoda','Škoda','Czech Republic','kodiaq_ns','Kodiaq (NS — 2ª gen)','suv',2024,2026,'2.0 TDI 150cv',150,1968,'diesel','car','Czech Republic')

# ─── FIAT ─────────────────────────────────────────────────────────────────────
add('fiat','Fiat','Italy','panda_iii','Panda (III gen — Cross/City Life)','city car',2012,2026,'1.0 Mild Hybrid 70cv',70,999,'mild_hybrid','car','Italy')
add('fiat','Fiat','Italy','panda_iii','Panda (III gen — Cross/City Life)','city car',2012,2026,'1.2 69cv',69,1242,'gasoline','car','Italy')
add('fiat','Fiat','Italy','panda_iii','Panda (III gen — Cross/City Life)','city car',2012,2026,'0.9 TwinAir 85cv',85,875,'gasoline','car','Italy')
add('fiat','Fiat','Italy','panda_iii','Panda (III gen — Cross/City Life)','city car',2012,2026,'1.3 Multijet 95cv Cross 4x4',95,1248,'diesel','car','Italy')
add('fiat','Fiat','Italy','500e','500 e (3ª gen BEV)','city car',2020,2026,'Elettrico 95cv 24kWh',95,None,'electric','car','Italy')
add('fiat','Fiat','Italy','500e','500 e (3ª gen BEV)','city car',2020,2026,'Elettrico 118cv 42kWh La Prima',118,None,'electric','car','Italy')
add('fiat','Fiat','Italy','500x','500X','suv',2015,2026,'1.0 GSE 120cv',120,999,'gasoline','car','Italy')
add('fiat','Fiat','Italy','500x','500X','suv',2015,2026,'1.3 GSE 150cv',150,1332,'gasoline','car','Italy')
add('fiat','Fiat','Italy','500x','500X','suv',2015,2026,'1.6 MultiJet 130cv',130,1598,'diesel','car','Italy')
add('fiat','Fiat','Italy','tipo_sw','Tipo SW / Berlina (356)','berlina',2016,2026,'1.0 TSI 100cv',100,999,'gasoline','car','Italy')
add('fiat','Fiat','Italy','tipo_sw','Tipo SW / Berlina (356)','berlina',2016,2026,'1.4 95cv Fire',95,1368,'gasoline','car','Italy')
add('fiat','Fiat','Italy','tipo_sw','Tipo SW / Berlina (356)','berlina',2016,2026,'1.6 MultiJet 130cv',130,1598,'diesel','car','Italy')
add('fiat','Fiat','Italy','fiat_600','Fiat 600 e / Hybrid','suv',2023,2026,'Elettrico 156cv ë-600',156,None,'electric','car','Italy')
add('fiat','Fiat','Italy','fiat_600','Fiat 600 e / Hybrid','suv',2023,2026,'1.2 Hybrid 100cv DCT',100,1199,'mild_hybrid','car','Italy')

# ─── JEEP ─────────────────────────────────────────────────────────────────────
add('jeep','Jeep','USA','wrangler_jl','Wrangler (JL — 4ª gen)','offroad',2018,2026,'2.0T 272cv 4xe PHEV',272,1995,'plug_in_hybrid','car','USA')
add('jeep','Jeep','USA','wrangler_jl','Wrangler (JL — 4ª gen)','offroad',2018,2026,'3.6 Pentastar V6 285cv',285,3604,'gasoline','car','USA')
add('jeep','Jeep','USA','wrangler_jl','Wrangler (JL — 4ª gen)','offroad',2018,2026,'2.0 EcoDiesel 200cv',200,1995,'diesel','car','USA')
add('jeep','Jeep','USA','wrangler_jl','Wrangler (JL — 4ª gen)','offroad',2018,2026,'6.4 HEMI V8 470cv Rubicon 392',470,6424,'gasoline','car','USA')
add('jeep','Jeep','USA','grand_cherokee5','Grand Cherokee (WL — 5ª gen)','suv',2021,2026,'3.6 Pentastar V6 293cv',293,3604,'gasoline','car','USA')
add('jeep','Jeep','USA','grand_cherokee5','Grand Cherokee (WL — 5ª gen)','suv',2021,2026,'5.7 HEMI V8 360cv Summit',360,5654,'gasoline','car','USA')
add('jeep','Jeep','USA','grand_cherokee5','Grand Cherokee (WL — 5ª gen)','suv',2021,2026,'2.0T PHEV 375cv 4xe',375,1995,'plug_in_hybrid','car','USA')
add('jeep','Jeep','USA','grand_cherokee5','Grand Cherokee (WL — 5ª gen)','suv',2021,2026,'6.4 HEMI V8 470cv SRT',470,6424,'gasoline','car','USA')
add('jeep','Jeep','USA','compass_2','Compass (2ª gen MP)','suv',2017,2026,'1.3 GSE 150cv',150,1332,'gasoline','car','USA')
add('jeep','Jeep','USA','compass_2','Compass (2ª gen MP)','suv',2017,2026,'1.3 PHEV 190cv 4xe',190,1332,'plug_in_hybrid','car','USA')
add('jeep','Jeep','USA','compass_2','Compass (2ª gen MP)','suv',2017,2026,'1.6 MultiJet 130cv',130,1598,'diesel','car','USA')
add('jeep','Jeep','USA','avenger','Avenger (BEV 2023+)','suv',2023,2026,'Elettrico FWD 156cv ë-Avenger',156,None,'electric','car','USA')
add('jeep','Jeep','USA','avenger','Avenger (BEV 2023+)','suv',2023,2026,'1.2 PureTech 100cv Hybrid',100,1199,'gasoline','car','USA')
add('jeep','Jeep','USA','renegade','Renegade (BU facelift)','suv',2014,2026,'1.0 GSE 120cv',120,999,'gasoline','car','USA')
add('jeep','Jeep','USA','renegade','Renegade (BU facelift)','suv',2014,2026,'1.3 GSE 150cv 4xe',150,1332,'gasoline','car','USA')
add('jeep','Jeep','USA','renegade','Renegade (BU facelift)','suv',2014,2026,'1.3 PHEV 190cv 4xe AWD',190,1332,'plug_in_hybrid','car','USA')
add('jeep','Jeep','USA','renegade','Renegade (BU facelift)','suv',2014,2026,'2.0 MultiJet 120cv',120,1956,'diesel','car','USA')

# ─── SUBARU ───────────────────────────────────────────────────────────────────
add('subaru','Subaru','Japan','outback_bt','Outback (BT — 6ª gen)','suv',2020,2026,'2.5 Lineartronic 175cv',175,2498,'gasoline','car','Japan')
add('subaru','Subaru','Japan','outback_bt','Outback (BT — 6ª gen)','suv',2020,2026,'2.4T 260cv Onyx Edition XT',260,2387,'gasoline','car','Japan')
add('subaru','Subaru','Japan','forester_sk','Forester (SK — 5ª gen)','suv',2018,2026,'2.0i-S EyeSight 150cv',150,1995,'gasoline','car','Japan')
add('subaru','Subaru','Japan','forester_sk','Forester (SK — 5ª gen)','suv',2018,2026,'2.0i Hybrid 145cv e-BOXER',145,1995,'hybrid','car','Japan')
add('subaru','Subaru','Japan','wrx_vb','WRX (VB — 2022+)','berlina',2022,2026,'2.4T FA24 275cv',275,2387,'gasoline','car','Japan')
add('subaru','Subaru','Japan','wrx_vb','WRX (VB — 2022+)','berlina',2022,2026,'2.4T FA24 275cv Sport',275,2387,'gasoline','car','Japan')
add('subaru','Subaru','Japan','brz_zd8','BRZ (ZD8 — 2ª gen)','coupé',2021,2026,'2.4 FA24 234cv',234,2387,'gasoline','car','Japan')
add('subaru','Subaru','Japan','brz_zd8','BRZ (ZD8 — 2ª gen)','coupé',2021,2026,'2.4 FA24 234cv Limited',234,2387,'gasoline','car','Japan')
add('subaru','Subaru','Japan','crosstrek_ku','Crosstrek (KU — 3ª gen)','suv',2023,2026,'2.0i Hybrid 136cv e-BOXER',136,1995,'hybrid','car','Japan')
add('subaru','Subaru','Japan','crosstrek_ku','Crosstrek (KU — 3ª gen)','suv',2023,2026,'2.5 PHEV 132cv',132,2498,'plug_in_hybrid','car','Japan')
add('subaru','Subaru','Japan','solterra','Solterra (BEV)','suv',2022,2026,'Elettrico AWD 218cv',218,None,'electric','car','Japan')

# ─── MITSUBISHI ───────────────────────────────────────────────────────────────
add('mitsubishi','Mitsubishi','Japan','outlander_phev','Outlander PHEV (3ª gen)','suv',2021,2026,'2.4 PHEV 248cv AWD',248,2360,'plug_in_hybrid','car','Japan')
add('mitsubishi','Mitsubishi','Japan','outlander_phev','Outlander PHEV (3ª gen)','suv',2021,2026,'2.4 PHEV 248cv SEL AWD',248,2360,'plug_in_hybrid','car','Japan')
add('mitsubishi','Mitsubishi','Japan','eclipse_cross','Eclipse Cross PHEV','suv',2017,2026,'2.4 PHEV 188cv 4WD',188,2360,'plug_in_hybrid','car','Japan')
add('mitsubishi','Mitsubishi','Japan','eclipse_cross','Eclipse Cross PHEV','suv',2017,2026,'1.5T 163cv FWD',163,1499,'gasoline','car','Japan')
add('mitsubishi','Mitsubishi','Japan','asx_3','ASX (3ª gen — 2023+)','suv',2023,2026,'1.0 T 130cv',130,999,'gasoline','car','Japan')
add('mitsubishi','Mitsubishi','Japan','asx_3','ASX (3ª gen — 2023+)','suv',2023,2026,'1.6 HEV 143cv Full Hybrid',143,1598,'hybrid','car','Japan')
add('mitsubishi','Mitsubishi','Japan','asx_3','ASX (3ª gen — 2023+)','suv',2023,2026,'1.6 PHEV 180cv Plug-in Hybrid',180,1598,'plug_in_hybrid','car','Japan')
add('mitsubishi','Mitsubishi','Japan','lancer_evo','Lancer Evolution X (CZ4A)','berlina',2007,2016,'2.0 MIVEC 291cv GSR',291,1998,'gasoline','car','Japan')
add('mitsubishi','Mitsubishi','Japan','lancer_evo','Lancer Evolution X (CZ4A)','berlina',2007,2016,'2.0 MIVEC 295cv FQ-400',295,1998,'gasoline','car','Japan')

# ─── SUZUKI AUTO ──────────────────────────────────────────────────────────────
add('suzuki','Suzuki','Japan','swift_az','Swift (AZ — 5ª gen)','hatchback',2017,2026,'1.2 DualJet 83cv MHEV',83,1197,'mild_hybrid','car','Japan')
add('suzuki','Suzuki','Japan','swift_az','Swift (AZ — 5ª gen)','hatchback',2017,2026,'1.0 Boosterjet 112cv S',112,998,'gasoline','car','Japan')
add('suzuki','Suzuki','Japan','vitara_ly','Vitara (LY facelift)','suv',2015,2026,'1.4 Boosterjet 129cv MHEV 4WD',129,1373,'mild_hybrid','car','Japan')
add('suzuki','Suzuki','Japan','vitara_ly','Vitara (LY facelift)','suv',2015,2026,'1.5 MHEV HEV 115cv',115,1462,'mild_hybrid','car','Japan')
add('suzuki','Suzuki','Japan','jimny_jb74','Jimny (JB74 — 4ª gen)','offroad',2018,2026,'1.5 K15C 102cv',102,1462,'gasoline','car','Japan')
add('suzuki','Suzuki','Japan','jimny_jb74','Jimny (JB74 — 4ª gen)','offroad',2018,2026,'1.5 K15C 102cv GLX',102,1462,'gasoline','car','Japan')
add('suzuki','Suzuki','Japan','sx4_scross','S-Cross MHEV (2022+)','suv',2022,2026,'1.4 Boosterjet 129cv MHEV 4WD',129,1373,'mild_hybrid','car','Japan')
add('suzuki','Suzuki','Japan','sx4_scross','S-Cross MHEV (2022+)','suv',2022,2026,'1.5 MHEV HEV 115cv',115,1462,'mild_hybrid','car','Japan')

# ─── LEXUS ────────────────────────────────────────────────────────────────────
add('lexus','Lexus','Japan','rz_450e','RZ 450e (BEV)','suv',2022,2026,'Elettrico AWD 313cv',313,None,'electric','car','Japan')
add('lexus','Lexus','Japan','rz_450e','RZ 450e (BEV)','suv',2022,2026,'Elettrico AWD 313cv Direct4',313,None,'electric','car','Japan')
add('lexus','Lexus','Japan','rx_5','RX (5ª gen — 2022+)','suv',2022,2026,'2.4T 279cv HEV',279,2393,'hybrid','car','Japan')
add('lexus','Lexus','Japan','rx_5','RX (5ª gen — 2022+)','suv',2022,2026,'2.4T PHEV 306cv 450h+',306,2393,'plug_in_hybrid','car','Japan')
add('lexus','Lexus','Japan','rx_5','RX (5ª gen — 2022+)','suv',2022,2026,'3.5 V6 HEV 371cv 500h',371,3456,'hybrid','car','Japan')
add('lexus','Lexus','Japan','lc500','LC 500 / LC 500h','coupé',2017,2026,'5.0 V8 477cv LC 500',477,4969,'gasoline','car','Japan')
add('lexus','Lexus','Japan','lc500','LC 500 / LC 500h','coupé',2017,2026,'3.5 V6 HEV 359cv LC 500h',359,3456,'hybrid','car','Japan')
add('lexus','Lexus','Japan','nx_2','NX (2ª gen — 2022+)','suv',2022,2026,'2.5 HEV 244cv 350h AWD',244,2487,'hybrid','car','Japan')
add('lexus','Lexus','Japan','nx_2','NX (2ª gen — 2022+)','suv',2022,2026,'2.4T PHEV 306cv 450h+',306,2393,'plug_in_hybrid','car','Japan')

# ─── KTM ──────────────────────────────────────────────────────────────────────
add('ktm','KTM','Austria','duke_390','Duke 390 / 790 / 890','naked',2017,2026,'LC4c 373cc 44cv 390 Duke',44,373,'gasoline','motorcycle','Austria')
add('ktm','KTM','Austria','duke_390','Duke 390 / 790 / 890','naked',2017,2026,'LC8c 799cc 95cv 790 Duke',95,799,'gasoline','motorcycle','Austria')
add('ktm','KTM','Austria','duke_390','Duke 390 / 790 / 890','naked',2017,2026,'LC8c 889cc 121cv 890 Duke',121,889,'gasoline','motorcycle','Austria')
add('ktm','KTM','Austria','adventure_890','Adventure 890 / 1090 / 1190','adventure',2019,2026,'LC8c 889cc 105cv 890 Adventure',105,889,'gasoline','motorcycle','Austria')
add('ktm','KTM','Austria','adventure_890','Adventure 890 / 1090 / 1190','adventure',2019,2026,'LC8c 889cc 121cv 890 Adventure R',121,889,'gasoline','motorcycle','Austria')
add('ktm','KTM','Austria','superduke_1290','Super Duke R 1290','naked',2014,2026,'LC8 1301cc 177cv',177,1301,'gasoline','motorcycle','Austria')
add('ktm','KTM','Austria','superduke_1290','Super Duke R 1290','naked',2014,2026,'LC8 1301cc 180cv EVO',180,1301,'gasoline','motorcycle','Austria')
add('ktm','KTM','Austria','rc_390','RC 390 / RC 8C','sportbike',2014,2026,'LC4c 373cc 44cv RC 390',44,373,'gasoline','motorcycle','Austria')
add('ktm','KTM','Austria','adventure1290','Adventure 1290 S/R/T','adventure',2021,2026,'LC8 1301cc 160cv S',160,1301,'gasoline','motorcycle','Austria')
add('ktm','KTM','Austria','adventure1290','Adventure 1290 S/R/T','adventure',2021,2026,'LC8 1301cc 160cv R Off-Road',160,1301,'gasoline','motorcycle','Austria')

# ─── TRIUMPH ──────────────────────────────────────────────────────────────────
add('triumph','Triumph','UK','speed_triple','Speed Triple 1200 RS/RR','naked',2021,2026,'1160cc I3 180cv RS',180,1160,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','speed_triple','Speed Triple 1200 RS/RR','naked',2021,2026,'1160cc I3 182cv RR Race',182,1160,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','street_triple','Street Triple 765 R/RS/Moto2','naked',2017,2026,'765cc I3 118cv R',118,765,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','street_triple','Street Triple 765 R/RS/Moto2','naked',2017,2026,'765cc I3 130cv RS',130,765,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','street_triple','Street Triple 765 R/RS/Moto2','naked',2017,2026,'765cc I3 130cv Moto2 Edition',130,765,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','tiger_900','Tiger 900 GT/Rally/Pro','adventure',2020,2026,'888cc I3 95cv GT',95,888,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','tiger_900','Tiger 900 GT/Rally/Pro','adventure',2020,2026,'888cc I3 95cv Rally Pro',95,888,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','tiger_1200','Tiger 1200 GT/Rally (2022+)','adventure',2022,2026,'1160cc I3 150cv GT Explorer',150,1160,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','tiger_1200','Tiger 1200 GT/Rally (2022+)','adventure',2022,2026,'1160cc I3 150cv Rally Explorer',150,1160,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','rocket3','Rocket 3 R/GT (2020+)','cruiser',2020,2026,'2458cc I3 167cv R',167,2458,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','rocket3','Rocket 3 R/GT (2020+)','cruiser',2020,2026,'2458cc I3 167cv GT touring',167,2458,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','bonneville','Bonneville T120 / T100 / Speedmaster','classic',2016,2026,'1200cc I2 80cv T120',80,1200,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','bonneville','Bonneville T120 / T100 / Speedmaster','classic',2016,2026,'900cc I2 65cv T100',65,900,'gasoline','motorcycle','UK')
add('triumph','Triumph','UK','daytona660','Daytona 660 (2023+)','sportbike',2023,2026,'660cc I3 95cv',95,660,'gasoline','motorcycle','UK')

# ─── HARLEY-DAVIDSON ──────────────────────────────────────────────────────────
add('harley_davidson','Harley-Davidson','USA','pan_america','Pan America 1250 S/Special','adventure',2021,2026,'Revolution Max 1252cc 150cv',150,1252,'gasoline','motorcycle','USA')
add('harley_davidson','Harley-Davidson','USA','pan_america','Pan America 1250 S/Special','adventure',2021,2026,'Revolution Max 1252cc 150cv Special Wide',150,1252,'gasoline','motorcycle','USA')
add('harley_davidson','Harley-Davidson','USA','sportster_s','Sportster S (2021+)','naked',2021,2026,'Revolution Max 1252cc 121cv',121,1252,'gasoline','motorcycle','USA')
add('harley_davidson','Harley-Davidson','USA','street_glide2','Street Glide / Road Glide (Bagger)','touring',2023,2026,'Milwaukee-Eight 117 1923cc 101cv',101,1923,'gasoline','motorcycle','USA')
add('harley_davidson','Harley-Davidson','USA','street_glide2','Street Glide / Road Glide (Bagger)','touring',2023,2026,'Milwaukee-Eight 121 1977cc 120cv CVO',120,1977,'gasoline','motorcycle','USA')
add('harley_davidson','Harley-Davidson','USA','fat_boy','Fat Boy / Heritage Softail (2018+)','cruiser',2018,2026,'Milwaukee-Eight 107 1745cc 91cv',91,1745,'gasoline','motorcycle','USA')
add('harley_davidson','Harley-Davidson','USA','fat_boy','Fat Boy / Heritage Softail (2018+)','cruiser',2018,2026,'Milwaukee-Eight 114 1868cc 98cv',98,1868,'gasoline','motorcycle','USA')
add('harley_davidson','Harley-Davidson','USA','nightster','Nightster / Roadster (RH975)','naked',2022,2026,'Revolution Max 975T 90cv',90,975,'gasoline','motorcycle','USA')
add('harley_davidson','Harley-Davidson','USA','livewire','LiveWire ONE (2021+)','naked',2021,2026,'Elettrico 105cv',105,None,'electric','motorcycle','USA')

# ─── ROYAL ENFIELD ────────────────────────────────────────────────────────────
add('royal_enfield','Royal Enfield','India','himalayan_450','Himalayan 450 (Sherpa — 2024+)','adventure',2024,2026,'Sherpa 450cc 40cv',40,452,'gasoline','motorcycle','India')
add('royal_enfield','Royal Enfield','India','himalayan_411','Himalayan 411 (— 2023)','adventure',2016,2023,'411cc LS410 24cv',24,411,'gasoline','motorcycle','India')
add('royal_enfield','Royal Enfield','India','meteor_350','Meteor 350','cruiser',2020,2026,'350cc J-series 20cv',20,349,'gasoline','motorcycle','India')
add('royal_enfield','Royal Enfield','India','classic_350','Classic 350 (2021+)','classic',2021,2026,'350cc J-series 20cv',20,349,'gasoline','motorcycle','India')
add('royal_enfield','Royal Enfield','India','super_meteor_650','Super Meteor 650 / Shotgun','cruiser',2023,2026,'648cc DOHC Parallel Twin 47cv',47,648,'gasoline','motorcycle','India')
add('royal_enfield','Royal Enfield','India','continental_gt_650','Continental GT 650 / INT 650','classic',2018,2026,'648cc DOHC Parallel Twin 47cv',47,648,'gasoline','motorcycle','India')
add('royal_enfield','Royal Enfield','India','continental_gt_650','Continental GT 650 / INT 650','classic',2018,2026,'648cc DOHC Parallel Twin 47cv Interceptor 650',47,648,'gasoline','motorcycle','India')

# ─── SUZUKI MOTO ──────────────────────────────────────────────────────────────
add('suzuki_moto','Suzuki','Japan','hayabusa_3','Hayabusa (3ª gen — 2021+)','sportbike',2021,2026,'1340cc I4 190cv',190,1340,'gasoline','motorcycle','Japan')
add('suzuki_moto','Suzuki','Japan','hayabusa_3','Hayabusa (3ª gen — 2021+)','sportbike',2021,2026,'1340cc I4 190cv Limited Edition',190,1340,'gasoline','motorcycle','Japan')
add('suzuki_moto','Suzuki','Japan','gsxr1000','GSX-R750 / GSX-R1000R','sportbike',2017,2026,'999cc I4 202cv GSX-R1000R',202,999,'gasoline','motorcycle','Japan')
add('suzuki_moto','Suzuki','Japan','gsxr1000','GSX-R750 / GSX-R1000R','sportbike',2017,2026,'749cc I4 150cv GSX-R750',150,749,'gasoline','motorcycle','Japan')
add('suzuki_moto','Suzuki','Japan','gsx_s1000','GSX-S1000 / GT (2021+)','naked',2021,2026,'999cc I4 152cv GSX-S1000',152,999,'gasoline','motorcycle','Japan')
add('suzuki_moto','Suzuki','Japan','gsx_s1000','GSX-S1000 / GT (2021+)','naked',2021,2026,'999cc I4 152cv GT Touring',152,999,'gasoline','motorcycle','Japan')
add('suzuki_moto','Suzuki','Japan','vstrom_1050','V-Strom 650 / 1050 XT','adventure',2017,2026,'645cc V2 71cv 650 XT',71,645,'gasoline','motorcycle','Japan')
add('suzuki_moto','Suzuki','Japan','vstrom_1050','V-Strom 650 / 1050 XT','adventure',2020,2026,'1037cc V2 107cv 1050 XT',107,1037,'gasoline','motorcycle','Japan')


# ─── OUTPUT ───────────────────────────────────────────────────────────────────
print(f"-- {len(rows)} righe da inserire")
print("INSERT INTO vehicle_specs")
print("  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)")
print("VALUES")
print(",\n".join(rows))
print("ON CONFLICT DO NOTHING;")
print(f"\n-- Fine: {len(rows)} motorizzazioni — batch 3")

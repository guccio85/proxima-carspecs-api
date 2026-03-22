#!/usr/bin/env python3
"""Genera sql/batch4_aliases.sql — ~235 righe
Brand: Dodge, RAM, Cadillac, GMC, Abarth, Maserati, Lancia, MINI, Alpine,
       MV Agusta, Indian, Kawasaki (extra)
"""

rows = [
    # ─── DODGE ──────────────────────────────────────────────────────────────
    # Challenger LC (3ª gen) — model_id: challenger_lc
    ("dodge","Dodge","USA","challenger_lc","Challenger (LC — SRT Hellcat/Demon)","muscle",2008,2023,"5.7 HEMI V8 375cv R/T",375,5654,"gasoline","car","USA"),
    ("dodge","Dodge","USA","challenger_lc","Challenger (LC — SRT Hellcat/Demon)","muscle",2015,2023,"6.2 Supercharged V8 717cv SRT Hellcat",717,6166,"gasoline","car","USA"),
    ("dodge","Dodge","USA","challenger_lc","Challenger (LC — SRT Hellcat/Demon)","muscle",2018,2023,"6.2 Supercharged V8 797cv SRT Hellcat Redeye",797,6166,"gasoline","car","USA"),
    ("dodge","Dodge","USA","challenger_lc","Challenger (LC — SRT Hellcat/Demon)","muscle",2021,2021,"6.2 Supercharged V8 808cv SRT Demon",808,6166,"gasoline","car","USA"),
    ("dodge","Dodge","USA","challenger_lc","Challenger (LC — SRT Hellcat/Demon)","muscle",2023,2023,"6.2 Supercharged V8 1025cv SRT Demon 170",1025,6166,"gasoline","car","USA"),
    ("dodge","Dodge","USA","challenger_lc","Challenger (LC — SRT Hellcat/Demon)","muscle",2015,2023,"6.4 HEMI V8 492cv SRT 392",492,6424,"gasoline","car","USA"),
    # Charger LD (7ª gen)
    ("dodge","Dodge","USA","charger_ld","Charger (LD — 7ª gen)","berlina",2011,2023,"3.6 Pentastar V6 292cv",292,3604,"gasoline","car","USA"),
    ("dodge","Dodge","USA","charger_ld","Charger (LD — 7ª gen)","berlina",2011,2023,"5.7 HEMI V8 370cv R/T",370,5654,"gasoline","car","USA"),
    ("dodge","Dodge","USA","charger_ld","Charger (LD — 7ª gen)","berlina",2015,2023,"6.2 SC V8 707cv SRT Hellcat",707,6166,"gasoline","car","USA"),
    ("dodge","Dodge","USA","charger_ld","Charger (LD — 7ª gen)","berlina",2020,2023,"6.2 SC V8 797cv SRT Hellcat Redeye Widebody",797,6166,"gasoline","car","USA"),
    ("dodge","Dodge","USA","charger_ld","Charger (LD — 7ª gen)","berlina",2015,2023,"6.4 HEMI V8 485cv SRT 392",485,6424,"gasoline","car","USA"),
    # Charger Daytona EV (8ª gen)
    ("dodge","Dodge","USA","dodge_charger_daytona","Charger Daytona (BEV — 8ª gen)","muscle",2024,2026,"Elettrico RWD 496cv Standard",496,None,"electric","car","USA"),
    ("dodge","Dodge","USA","dodge_charger_daytona","Charger Daytona (BEV — 8ª gen)","muscle",2024,2026,"Elettrico AWD 670cv Banshee",670,None,"electric","car","USA"),
    # Durango WL
    ("dodge","Dodge","USA","dodge_durango_wl","Durango (WL — 3ª gen)","suv",2011,2023,"3.6 Pentastar V6 293cv",293,3604,"gasoline","car","USA"),
    ("dodge","Dodge","USA","dodge_durango_wl","Durango (WL — 3ª gen)","suv",2011,2023,"5.7 HEMI V8 360cv R/T",360,5654,"gasoline","car","USA"),
    ("dodge","Dodge","USA","dodge_durango_wl","Durango (WL — 3ª gen)","suv",2011,2023,"6.4 HEMI V8 475cv SRT 392",475,6424,"gasoline","car","USA"),
    ("dodge","Dodge","USA","dodge_durango_wl","Durango (WL — 3ª gen)","suv",2021,2021,"6.2 SC V8 710cv SRT Hellcat",710,6166,"gasoline","car","USA"),
    # Hornet PHEV
    ("dodge","Dodge","USA","dodge_hornet_phev","Hornet R/T PHEV","suv",2022,2026,"1.3T 268cv R/T",268,1332,"gasoline","car","USA"),
    ("dodge","Dodge","USA","dodge_hornet_phev","Hornet R/T PHEV","suv",2022,2026,"2.0T PHEV 288cv R/T Plus",288,1995,"plug_in_hybrid","car","USA"),
    # Viper
    ("dodge","Dodge","USA","dod_viper","Viper SRT-10 / ACR (ZB II)","supercar",2003,2017,"8.4 V10 645cv SRT10",645,8382,"gasoline","car","USA"),
    ("dodge","Dodge","USA","dod_viper","Viper SRT-10 / ACR (ZB II)","supercar",2008,2010,"8.4 V10 600cv SRT10 ACR",600,8382,"gasoline","car","USA"),

    # ─── RAM ────────────────────────────────────────────────────────────────
    ("ram","RAM","USA","ram_1500_dt","RAM 1500 (DT — 2019+)","pickup",2019,2026,"3.6 Pentastar V6 305cv",305,3604,"gasoline","car","USA"),
    ("ram","RAM","USA","ram_1500_dt","RAM 1500 (DT — 2019+)","pickup",2019,2026,"5.7 HEMI V8 395cv",395,5654,"gasoline","car","USA"),
    ("ram","RAM","USA","ram_1500_dt","RAM 1500 (DT — 2019+)","pickup",2019,2026,"5.7 HEMI eTorque V8 395cv 48V",395,5654,"mild_hybrid","car","USA"),
    ("ram","RAM","USA","ram_1500_dt","RAM 1500 (DT — 2019+)","pickup",2019,2026,"3.0 EcoDiesel V6 260cv",260,2987,"diesel","car","USA"),
    ("ram","RAM","USA","ram_trx","RAM 1500 TRX (supercharged)","pickup",2021,2026,"6.2 Supercharged V8 702cv TRX",702,6166,"gasoline","car","USA"),
    ("ram","RAM","USA","ram_trx","RAM 1500 TRX (supercharged)","pickup",2021,2026,"6.2 Supercharged V8 702cv TRX Launch Edition",702,6166,"gasoline","car","USA"),
    ("ram","RAM","USA","ram_2500_hd","RAM 2500 / 3500 Heavy Duty","pickup",2019,2026,"6.4 HEMI V8 410cv 2500",410,6424,"gasoline","car","USA"),
    ("ram","RAM","USA","ram_2500_hd","RAM 2500 / 3500 Heavy Duty","pickup",2019,2026,"6.7 Cummins Diesel I6 370cv",370,6690,"diesel","car","USA"),
    ("ram","RAM","USA","ram_2500_hd","RAM 2500 / 3500 Heavy Duty","pickup",2019,2026,"6.7 Cummins Diesel I6 400cv High Output",400,6690,"diesel","car","USA"),

    # ─── CADILLAC ───────────────────────────────────────────────────────────
    ("cadillac","Cadillac","USA","cadillac_ct4","CT4 / CT4-V / CT4-V Blackwing","berlina",2020,2026,"2.0T 237cv",237,1997,"gasoline","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_ct4","CT4 / CT4-V / CT4-V Blackwing","berlina",2020,2026,"2.7T 325cv CT4-V",325,2694,"gasoline","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_ct4","CT4 / CT4-V / CT4-V Blackwing","berlina",2022,2026,"3.6 Twin-Turbo V6 472cv Blackwing",472,3564,"gasoline","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_ct5","CT5 / CT5-V / CT5-V Blackwing","berlina",2020,2026,"2.0T 237cv",237,1997,"gasoline","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_ct5","CT5 / CT5-V / CT5-V Blackwing","berlina",2020,2026,"3.0 Twin-Turbo V6 360cv CT5-V",360,2998,"gasoline","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_ct5","CT5 / CT5-V / CT5-V Blackwing","berlina",2022,2026,"6.2 Supercharged V8 668cv Blackwing",668,6162,"gasoline","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_escalade5","Escalade (5ª gen — 2021+)","suv",2021,2026,"6.2 V8 420cv",420,6162,"gasoline","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_escalade5","Escalade (5ª gen — 2021+)","suv",2021,2026,"3.0 Duramax Diesel 277cv",277,2996,"diesel","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_escalade5","Escalade (5ª gen — 2021+)","suv",2023,2026,"6.2 V8 PHEV 455cv Sport Platinum",455,6162,"plug_in_hybrid","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_lyriq","Lyriq (BEV)","suv",2023,2026,"Elettrico RWD 340cv",340,None,"electric","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_lyriq","Lyriq (BEV)","suv",2023,2026,"Elettrico AWD 500cv",500,None,"electric","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_xt4","XT4 AWD","suv",2019,2026,"2.0T 237cv AWD",237,1997,"gasoline","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_xt5","XT5 / XT5 Sport AWD","suv",2017,2026,"2.0T 237cv FWD",237,1997,"gasoline","car","USA"),
    ("cadillac","Cadillac","USA","cadillac_xt5","XT5 / XT5 Sport AWD","suv",2017,2026,"3.6 V6 310cv Premium Luxury AWD",310,3564,"gasoline","car","USA"),

    # ─── GMC ────────────────────────────────────────────────────────────────
    ("gmc","GMC","USA","gmc_sierra_1500","Sierra 1500 (T1/T1B — 5ª gen)","pickup",2019,2026,"2.7T 310cv EcoTec3",310,2694,"gasoline","car","USA"),
    ("gmc","GMC","USA","gmc_sierra_1500","Sierra 1500 (T1/T1B — 5ª gen)","pickup",2019,2026,"5.3 V8 355cv EcoTec3",355,5328,"gasoline","car","USA"),
    ("gmc","GMC","USA","gmc_sierra_1500","Sierra 1500 (T1/T1B — 5ª gen)","pickup",2019,2026,"6.2 V8 420cv EcoTec3 Denali",420,6162,"gasoline","car","USA"),
    ("gmc","GMC","USA","gmc_sierra_1500","Sierra 1500 (T1/T1B — 5ª gen)","pickup",2020,2026,"3.0 Duramax Diesel I6 277cv",277,2996,"diesel","car","USA"),
    ("gmc","GMC","USA","gmc_yukon5","Yukon / Yukon XL (5ª gen)","suv",2021,2026,"5.3 V8 355cv",355,5328,"gasoline","car","USA"),
    ("gmc","GMC","USA","gmc_yukon5","Yukon / Yukon XL (5ª gen)","suv",2021,2026,"6.2 V8 420cv AT4X",420,6162,"gasoline","car","USA"),
    ("gmc","GMC","USA","gmc_yukon5","Yukon / Yukon XL (5ª gen)","suv",2021,2026,"3.0 Duramax Diesel 277cv Denali",277,2996,"diesel","car","USA"),
    ("gmc","GMC","USA","gmc_hummer_ev","Hummer EV (Pickup / SUV)","pickup",2022,2026,"Elettrico AWD 1000cv Edition 1",1000,None,"electric","car","USA"),
    ("gmc","GMC","USA","gmc_hummer_ev","Hummer EV (Pickup / SUV)","pickup",2022,2026,"Elettrico AWD 830cv",830,None,"electric","car","USA"),
    ("gmc","GMC","USA","gmc_hummer_ev","Hummer EV (Pickup / SUV)","pickup",2022,2026,"Elettrico 2WD 625cv",625,None,"electric","car","USA"),
    ("gmc","GMC","USA","gmc_canyon4","Canyon (4ª gen AT4 — 2023+)","pickup",2023,2026,"2.7T 310cv AT4",310,2694,"gasoline","car","USA"),
    ("gmc","GMC","USA","gmc_canyon4","Canyon (4ª gen AT4 — 2023+)","pickup",2023,2026,"2.7T 310cv AT4X",310,2694,"gasoline","car","USA"),
    ("gmc","GMC","USA","gmc_canyon4","Canyon (4ª gen AT4 — 2023+)","pickup",2023,2026,"2.7T 310cv Denali",310,2694,"gasoline","car","USA"),
    ("gmc","GMC","USA","gmc_sierra_ev","Sierra EV Denali Edition 1","pickup",2024,2026,"Elettrico AWD 754cv Edition 1",754,None,"electric","car","USA"),
    ("gmc","GMC","USA","gmc_sierra_ev","Sierra EV Denali Edition 1","pickup",2024,2026,"Elettrico AWD 510cv Denali",510,None,"electric","car","USA"),
    ("gmc","GMC","USA","gmc_acadia3","Acadia (3ª gen AT4)","suv",2024,2026,"2.5 FWD 193cv",193,2457,"gasoline","car","USA"),
    ("gmc","GMC","USA","gmc_acadia3","Acadia (3ª gen AT4)","suv",2024,2026,"2.5T AWD 228cv AT4",228,2457,"gasoline","car","USA"),

    # ─── ABARTH ─────────────────────────────────────────────────────────────
    ("abarth","Abarth","Italy","aba_595c","595 Competizione / Turismo (312)","hatchback",2019,2024,"1.4 Turbo 145cv Turismo",145,1368,"gasoline","car","Italy"),
    ("abarth","Abarth","Italy","aba_595c","595 Competizione / Turismo (312)","hatchback",2019,2024,"1.4 Turbo 165cv Competizione",165,1368,"gasoline","car","Italy"),
    ("abarth","Abarth","Italy","aba_595c","595 Competizione / Turismo (312)","hatchback",2019,2024,"1.4 Turbo 180cv Esseesse",180,1368,"gasoline","car","Italy"),
    ("abarth","Abarth","Italy","aba_695","695 Biposto / Rivale (312)","hatchback",2014,2024,"1.4 Turbo 190cv Rivale",190,1368,"gasoline","car","Italy"),
    ("abarth","Abarth","Italy","aba_695","695 Biposto / Rivale (312)","hatchback",2014,2024,"1.4 Turbo 190cv Tributo Ferrari",190,1368,"gasoline","car","Italy"),
    ("abarth","Abarth","Italy","aba_f595","Abarth 500e (BEV 2023+)","hatchback",2023,2026,"Elettrico 154cv Standard",154,None,"electric","car","Italy"),
    ("abarth","Abarth","Italy","aba_f595","Abarth 500e (BEV 2023+)","hatchback",2023,2026,"Elettrico 154cv Turismo",154,None,"electric","car","Italy"),
    ("abarth","Abarth","Italy","aba_124","124 Spider Abarth (348)","decapottabile",2016,2021,"1.4 Multiair T-Jet 140cv",140,1368,"gasoline","car","Italy"),
    ("abarth","Abarth","Italy","aba_124","124 Spider Abarth (348)","decapottabile",2016,2021,"1.4 Multiair T-Jet 170cv Abarth",170,1368,"gasoline","car","Italy"),

    # ─── MASERATI ───────────────────────────────────────────────────────────
    ("maserati","Maserati","Italy","maserati_grecale","Grecale GT / Modena / Trofeo","suv",2022,2026,"2.0T MHEV 300cv GT",300,1997,"mild_hybrid","car","Italy"),
    ("maserati","Maserati","Italy","maserati_grecale","Grecale GT / Modena / Trofeo","suv",2022,2026,"2.0T MHEV 330cv Modena",330,1997,"mild_hybrid","car","Italy"),
    ("maserati","Maserati","Italy","maserati_grecale","Grecale GT / Modena / Trofeo","suv",2022,2026,"3.8 V8 530cv Trofeo",530,3799,"gasoline","car","Italy"),
    ("maserati","Maserati","Italy","maserati_grecale","Grecale GT / Modena / Trofeo","suv",2023,2026,"Elettrico AWD 557cv Folgore",557,None,"electric","car","Italy"),
    ("maserati","Maserati","Italy","maserati_granturismo","GranTurismo (M197 — II gen)","coupé",2022,2026,"3.0T V6 Nettuno 490cv GT",490,2992,"gasoline","car","Italy"),
    ("maserati","Maserati","Italy","maserati_granturismo","GranTurismo (M197 — II gen)","coupé",2022,2026,"3.0T V6 Nettuno 550cv Modena",550,2992,"gasoline","car","Italy"),
    ("maserati","Maserati","Italy","maserati_granturismo","GranTurismo (M197 — II gen)","coupé",2022,2026,"3.0T V6 Nettuno 620cv Trofeo",620,2992,"gasoline","car","Italy"),
    ("maserati","Maserati","Italy","maserati_granturismo","GranTurismo (M197 — II gen)","coupé",2023,2026,"Elettrico AWD 761cv Folgore",761,None,"electric","car","Italy"),
    ("maserati","Maserati","Italy","maserati_mc20","MC20 / MC20 Cielo","supercar",2020,2026,"3.0 Nettuno Twin-Turbo V6 630cv",630,2992,"gasoline","car","Italy"),
    ("maserati","Maserati","Italy","maserati_mc20","MC20 / MC20 Cielo","supercar",2023,2026,"Elettrico AWD 761cv Folgore",761,None,"electric","car","Italy"),
    ("maserati","Maserati","Italy","maserati_ghibli3","Ghibli (M157 — 3ª gen)","berlina",2013,2023,"2.0T MHEV 330cv Ibrida",330,1997,"mild_hybrid","car","Italy"),
    ("maserati","Maserati","Italy","maserati_ghibli3","Ghibli (M157 — 3ª gen)","berlina",2013,2023,"3.0 V6 350cv GTS",350,2979,"gasoline","car","Italy"),
    ("maserati","Maserati","Italy","maserati_ghibli3","Ghibli (M157 — 3ª gen)","berlina",2013,2023,"3.8 V8 580cv Trofeo",580,3799,"gasoline","car","Italy"),
    ("maserati","Maserati","Italy","maserati_levante_facelift","Levante (facelift 2022)","suv",2016,2026,"2.0T MHEV 330cv Modena",330,1997,"mild_hybrid","car","Italy"),
    ("maserati","Maserati","Italy","maserati_levante_facelift","Levante (facelift 2022)","suv",2016,2026,"3.0 V6 430cv S",430,2979,"gasoline","car","Italy"),
    ("maserati","Maserati","Italy","maserati_levante_facelift","Levante (facelift 2022)","suv",2016,2026,"3.8 V8 530cv Trofeo",530,3799,"gasoline","car","Italy"),
    ("maserati","Maserati","Italy","maserati_levante_facelift","Levante (facelift 2022)","suv",2022,2026,"Elettrico AWD 557cv Folgore",557,None,"electric","car","Italy"),

    # ─── LANCIA ─────────────────────────────────────────────────────────────
    ("lancia","Lancia","Italy","lancia_ypsilon_2024","Ypsilon (2024 BEV/Hybrid)","hatchback",2024,2026,"1.2 PureTech Hybrid 100cv Design",100,1199,"mild_hybrid","car","Italy"),
    ("lancia","Lancia","Italy","lancia_ypsilon_2024","Ypsilon (2024 BEV/Hybrid)","hatchback",2024,2026,"Elettrico 156cv ë-Ypsilon Edizione Limitata",156,None,"electric","car","Italy"),
    ("lancia","Lancia","Italy","lancia_delta_hf","Delta HF Integrale Evoluzione","hatchback",1987,1994,"2.0 16V Turbo 215cv Evo II",215,1995,"gasoline","car","Italy"),

    # ─── MINI ───────────────────────────────────────────────────────────────
    # Cooper F56 (2014+) — 3 porte
    ("mini","MINI","Germany","mini_cooper_f56","Cooper / Cooper S (F56 — 2014+)","hatchback",2014,2023,"1.5 Cooper 136cv",136,1499,"gasoline","car","Germany"),
    ("mini","MINI","Germany","mini_cooper_f56","Cooper / Cooper S (F56 — 2014+)","hatchback",2014,2023,"2.0 Cooper S 192cv",192,1998,"gasoline","car","Germany"),
    ("mini","MINI","Germany","mini_cooper_f56","Cooper / Cooper S (F56 — 2014+)","hatchback",2014,2023,"2.0 JCW 231cv",231,1998,"gasoline","car","Germany"),
    ("mini","MINI","Germany","mini_cooper_f56","Cooper / Cooper S (F56 — 2014+)","hatchback",2021,2023,"2.0 JCW GP3 306cv",306,1998,"gasoline","car","Germany"),
    ("mini","MINI","Germany","mini_cooper_f56","Cooper / Cooper S (F56 — 2014+)","hatchback",2019,2023,"Elettrico Cooper SE 184cv",184,None,"electric","car","Germany"),
    # Cooper J01 (2024+)
    ("mini","MINI","Germany","mini_cooper_j01","Cooper / Aceman (J01 — 2024+)","hatchback",2024,2026,"1.5T Cooper C 156cv",156,1499,"gasoline","car","Germany"),
    ("mini","MINI","Germany","mini_cooper_j01","Cooper / Aceman (J01 — 2024+)","hatchback",2024,2026,"Elettrico 184cv Cooper E",184,None,"electric","car","Germany"),
    ("mini","MINI","Germany","mini_cooper_j01","Cooper / Aceman (J01 — 2024+)","hatchback",2024,2026,"Elettrico 218cv Cooper SE",218,None,"electric","car","Germany"),
    # Convertible F57
    ("mini","MINI","Germany","mini_convertible_f57","Convertible / Cabrio (F57)","decapottabile",2016,2023,"1.5 Cooper 136cv Cabriolet",136,1499,"gasoline","car","Germany"),
    ("mini","MINI","Germany","mini_convertible_f57","Convertible / Cabrio (F57)","decapottabile",2016,2023,"2.0 Cooper S 192cv Cabriolet",192,1998,"gasoline","car","Germany"),
    ("mini","MINI","Germany","mini_convertible_f57","Convertible / Cabrio (F57)","decapottabile",2016,2023,"2.0 JCW 231cv Cabriolet",231,1998,"gasoline","car","Germany"),
    # Countryman F60 (2017+)
    ("mini","MINI","Germany","mini_countryman_f60","Countryman (F60 — 2017+)","suv",2017,2023,"1.5 Cooper 136cv",136,1499,"gasoline","car","Germany"),
    ("mini","MINI","Germany","mini_countryman_f60","Countryman (F60 — 2017+)","suv",2017,2023,"2.0 Cooper S ALL4 192cv",192,1998,"gasoline","car","Germany"),
    ("mini","MINI","Germany","mini_countryman_f60","Countryman (F60 — 2017+)","suv",2020,2023,"2.0 JCW ALL4 306cv",306,1998,"gasoline","car","Germany"),
    ("mini","MINI","Germany","mini_countryman_f60","Countryman (F60 — 2017+)","suv",2021,2023,"1.5 SE ALL4 PHEV 224cv",224,1499,"plug_in_hybrid","car","Germany"),
    # Countryman U25 (2024+)
    ("mini","MINI","Germany","mini_countryman_u25","Countryman (U25 — 2024+)","suv",2024,2026,"1.5T PHEV 204cv ALL4",204,1499,"plug_in_hybrid","car","Germany"),
    ("mini","MINI","Germany","mini_countryman_u25","Countryman (U25 — 2024+)","suv",2024,2026,"Elettrico AWD 313cv SE ALL4",313,None,"electric","car","Germany"),

    # ─── ALPINE ─────────────────────────────────────────────────────────────
    ("alpine","Alpine","France","alpine_a110_2017","A110 (2017+)","coupé",2017,2026,"1.8T 252cv",252,1798,"gasoline","car","France"),
    ("alpine","Alpine","France","alpine_a110_2017","A110 (2017+)","coupé",2017,2026,"1.8T 300cv S",300,1798,"gasoline","car","France"),
    ("alpine","Alpine","France","alpine_a110_2017","A110 (2017+)","coupé",2020,2026,"1.8T 300cv GT",300,1798,"gasoline","car","France"),
    ("alpine","Alpine","France","alpine_a110_2017","A110 (2017+)","coupé",2022,2026,"1.8T 300cv R Turini",300,1798,"gasoline","car","France"),
    ("alpine","Alpine","France","alpine_a110_r","A110 R / A110 S 2024","coupé",2022,2026,"1.8T 300cv A110 R",300,1798,"gasoline","car","France"),
    ("alpine","Alpine","France","alpine_a290","A290 (BEV 2024+)","hatchback",2024,2026,"Elettrico FWD 180cv",180,None,"electric","car","France"),
    ("alpine","Alpine","France","alpine_a290","A290 (BEV 2024+)","hatchback",2024,2026,"Elettrico FWD 220cv GT",220,None,"electric","car","France"),

    # ─── MV AGUSTA ──────────────────────────────────────────────────────────
    ("mv_agusta","MV Agusta","Italy","mv_brutale_1000","Brutale 1000 RR / Nürburgring","naked",2018,2026,"998cc I4 208cv RR",208,998,"gasoline","motorcycle","Italy"),
    ("mv_agusta","MV Agusta","Italy","mv_brutale_1000","Brutale 1000 RR / Nürburgring","naked",2020,2026,"998cc I4 212cv Nürburgring Edition",212,998,"gasoline","motorcycle","Italy"),
    ("mv_agusta","MV Agusta","Italy","mv_f3_675","F3 675 / F3 800","sportbike",2012,2020,"675cc I3 128cv F3 675",128,675,"gasoline","motorcycle","Italy"),
    ("mv_agusta","MV Agusta","Italy","mv_f3_675","F3 675 / F3 800","sportbike",2013,2023,"798cc I3 148cv F3 800 RC",148,798,"gasoline","motorcycle","Italy"),
    ("mv_agusta","MV Agusta","Italy","mv_dragster_800","Dragster 800 RC / SCS","naked",2014,2023,"798cc I3 140cv Dragster Rosso",140,798,"gasoline","motorcycle","Italy"),
    ("mv_agusta","MV Agusta","Italy","mv_dragster_800","Dragster 800 RC / SCS","naked",2020,2023,"798cc I3 140cv SCS",140,798,"gasoline","motorcycle","Italy"),
    ("mv_agusta","MV Agusta","Italy","mv_superveloce","Superveloce 800 / AGO","sportbike",2020,2026,"798cc I3 147cv",147,798,"gasoline","motorcycle","Italy"),
    ("mv_agusta","MV Agusta","Italy","mv_superveloce","Superveloce 800 / AGO","sportbike",2021,2026,"798cc I3 150cv AGO Edition",150,798,"gasoline","motorcycle","Italy"),
    ("mv_agusta","MV Agusta","Italy","mv_turismo_veloce","Turismo Veloce 800 / Lusso","adventure",2015,2023,"798cc I3 110cv Turismo Veloce",110,798,"gasoline","motorcycle","Italy"),
    ("mv_agusta","MV Agusta","Italy","mv_turismo_veloce","Turismo Veloce 800 / Lusso","adventure",2017,2023,"798cc I3 110cv Lusso SCS",110,798,"gasoline","motorcycle","Italy"),
    ("mv_agusta","MV Agusta","Italy","mv_rush_1000","Rush 1000 / Rush 1000 R","naked",2021,2026,"998cc I4 208cv Rush",208,998,"gasoline","motorcycle","Italy"),
    ("mv_agusta","MV Agusta","Italy","mv_rush_1000","Rush 1000 / Rush 1000 R","naked",2022,2026,"998cc I4 208cv Rush R",208,998,"gasoline","motorcycle","Italy"),

    # ─── INDIAN ─────────────────────────────────────────────────────────────
    ("indian","Indian Motorcycle","USA","indian_scout_2015","Scout / Bobber / Sixty","cruiser",2015,2026,"1131cc V-Twin 100cv Scout",100,1131,"gasoline","motorcycle","USA"),
    ("indian","Indian Motorcycle","USA","indian_scout_2015","Scout / Bobber / Sixty","cruiser",2016,2022,"999cc V-Twin 78cv Scout Sixty",78,999,"gasoline","motorcycle","USA"),
    ("indian","Indian Motorcycle","USA","indian_scout_2015","Scout / Bobber / Sixty","cruiser",2018,2026,"1131cc V-Twin 100cv Bobber",100,1131,"gasoline","motorcycle","USA"),
    ("indian","Indian Motorcycle","USA","indian_challenger","Challenger / Dark Horse","touring",2020,2026,"1768cc PowerPlus V-Twin 122cv",122,1768,"gasoline","motorcycle","USA"),
    ("indian","Indian Motorcycle","USA","indian_challenger","Challenger / Dark Horse","touring",2020,2026,"1768cc PowerPlus V-Twin 122cv Dark Horse",122,1768,"gasoline","motorcycle","USA"),
    ("indian","Indian Motorcycle","USA","indian_chief_2022","Chief / Chief Bobber / Dark Horse","cruiser",2022,2026,"1769cc Thunderstroke 116cv Chief",116,1769,"gasoline","motorcycle","USA"),
    ("indian","Indian Motorcycle","USA","indian_chief_2022","Chief / Chief Bobber / Dark Horse","cruiser",2022,2026,"1769cc Thunderstroke 116cv Chief Bobber",116,1769,"gasoline","motorcycle","USA"),
    ("indian","Indian Motorcycle","USA","indian_ftr1200","FTR 1200 / R / Rally","naked",2019,2026,"1203cc V-Twin 123cv FTR S",123,1203,"gasoline","motorcycle","USA"),
    ("indian","Indian Motorcycle","USA","indian_ftr1200","FTR 1200 / R / Rally","naked",2019,2026,"1203cc V-Twin 123cv FTR R Carbon",123,1203,"gasoline","motorcycle","USA"),
    ("indian","Indian Motorcycle","USA","indian_chieftain","Chieftain / Limited / Elite","touring",2014,2026,"1890cc Thunderstroke 111cv",111,1890,"gasoline","motorcycle","USA"),
    ("indian","Indian Motorcycle","USA","indian_chieftain","Chieftain / Limited / Elite","touring",2014,2026,"1890cc Thunderstroke 111cv Limited",111,1890,"gasoline","motorcycle","USA"),

    # ─── KAWASAKI extra ─────────────────────────────────────────────────────
    ("kawasaki","Kawasaki","Japan","kawa_z900","Z900 / Z900 SE (ZR900)","naked",2017,2026,"948cc I4 126cv Z900",126,948,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawa_z900","Z900 / Z900 SE (ZR900)","naked",2017,2026,"948cc I4 126cv Z900 SE",126,948,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawasaki_z900rs_2024","Z900RS / Z900RS Café (2018+)","classic",2018,2026,"948cc I4 111cv Z900RS",111,948,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawasaki_z900rs_2024","Z900RS / Z900RS Café (2018+)","classic",2018,2026,"948cc I4 111cv Z900RS Café",111,948,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawa_h2","Ninja H2 / H2R / H2 SX SE","sportbike",2015,2026,"998cc SC I4 200cv Ninja H2",200,998,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawa_h2","Ninja H2 / H2R / H2 SX SE","sportbike",2015,2026,"998cc SC I4 310cv Ninja H2R",310,998,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawasaki_ninja_h2_sx_se","Ninja H2 SX SE (2018+)","sport-touring",2018,2026,"998cc SC I4 211cv H2 SX SE",211,998,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawa_zx4rr","Ninja ZX-4RR / ZX-4R (2023+)","sportbike",2023,2026,"399cc I4 77cv ZX-4RR",77,399,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawa_zx4rr","Ninja ZX-4RR / ZX-4R (2023+)","sportbike",2023,2026,"399cc I4 57cv ZX-4R",57,399,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawa_versys1000","Versys 1000 SE (LZT00A)","adventure",2019,2026,"1043cc I4 120cv",120,1043,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawa_z1000","Z1000 / Z1000SX (ZRT00D)","naked",2014,2020,"1043cc I4 142cv Z1000",142,1043,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawa_z1000","Z1000 / Z1000SX (ZRT00D)","sport-touring",2014,2020,"1043cc I4 142cv Z1000SX",142,1043,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawa_zx10r","Ninja ZX-10R / ZX-10RR (ZX1000)","sportbike",2016,2026,"998cc I4 214cv ZX-10R",214,998,"gasoline","motorcycle","Japan"),
    ("kawasaki","Kawasaki","Japan","kawa_zx10r","Ninja ZX-10R / ZX-10RR (ZX1000)","sportbike",2021,2026,"998cc I4 214cv ZX-10RR",214,998,"gasoline","motorcycle","Japan"),
]

def fmt(v):
    if v is None:
        return "NULL"
    if isinstance(v, str):
        return "'" + v.replace("'", "''") + "'"
    return str(v)

header = """-- {n} righe da inserire
INSERT INTO vehicle_specs
  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)
VALUES""".format(n=len(rows))

lines = []
for i, r in enumerate(rows):
    (brand_id, brand_name, brand_country, model_id, model_name, body_type,
     year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region) = r
    sep = "," if i < len(rows) - 1 else ""
    line = (
        f"  (gen_random_uuid(), {fmt(brand_id)}, {fmt(brand_name)}, {fmt(brand_country)}, "
        f"{fmt(model_id)}, {fmt(model_name)}, {fmt(body_type)}, "
        f"{year_start}, {year_end}, {fmt(engine_name)}, "
        f"{hp}, {fmt(cc)}, {fmt(fuel_type)}, {fmt(vehicle_type)}, {fmt(region)}){sep}"
    )
    lines.append(line)

print(header)
print("\n".join(lines))
print("\nON CONFLICT DO NOTHING;")
print(f"\n-- Fine: {len(rows)} motorizzazioni — batch 4")

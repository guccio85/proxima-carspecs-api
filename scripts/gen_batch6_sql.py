#!/usr/bin/env python3
"""Batch 6 — Rolls-Royce, Bugatti, Koenigsegg, Rimac, Lamborghini,
              McLaren, Aston Martin, Tesla (nuovi modelli)"""

rows = [
    # ── ROLLS-ROYCE ──────────────────────────────────────────────────
    ("rolls_royce","Rolls-Royce","UK","rr_phantom_8",     "Phantom VIII (2017+)",           "berlina",      2017,2026,"6.75 V12 BiT 571cv Phantom",      571,6749,"gasoline","car","UK"),
    ("rolls_royce","Rolls-Royce","UK","rr_phantom_8",     "Phantom VIII (2017+)",           "berlina",      2017,2026,"6.75 V12 BiT 571cv EWB",          571,6749,"gasoline","car","UK"),
    ("rolls_royce","Rolls-Royce","UK","rr_ghost_6",       "Ghost (RR31 — 2020+)",           "berlina",      2020,2026,"6.75 V12 BiT 571cv Ghost",        571,6749,"gasoline","car","UK"),
    ("rolls_royce","Rolls-Royce","UK","rr_ghost_6",       "Ghost (RR31 — 2020+)",           "berlina",      2020,2026,"6.75 V12 BiT 592cv Black Badge",  592,6749,"gasoline","car","UK"),
    ("rolls_royce","Rolls-Royce","UK","rr_ghost_6",       "Ghost (RR31 — 2020+)",           "berlina",      2020,2026,"6.75 V12 BiT 571cv Ghost Extended",571,6749,"gasoline","car","UK"),
    ("rolls_royce","Rolls-Royce","UK","rr_cullinan",      "Cullinan (2018+)",               "suv",          2018,2026,"6.75 V12 BiT 571cv Cullinan",     571,6749,"gasoline","car","UK"),
    ("rolls_royce","Rolls-Royce","UK","rr_cullinan",      "Cullinan (2018+)",               "suv",          2018,2026,"6.75 V12 BiT 600cv Black Badge",  600,6749,"gasoline","car","UK"),
    ("rolls_royce","Rolls-Royce","UK","rr_cullinan",      "Cullinan (2018+)",               "suv",          2024,2026,"6.75 V12 BiT 600cv Series II",    600,6749,"gasoline","car","UK"),
    ("rolls_royce","Rolls-Royce","UK","rr_spectre",       "Spectre (BEV — 2023+)",          "coupé",        2023,2026,"Elettrico AWD 584cv Spectre",      584,None,"electric","car","UK"),

    # ── BUGATTI ──────────────────────────────────────────────────────
    ("bugatti_moderno","Bugatti","France","bugatti_veyron", "Veyron (W16 — 2005–2015)",     "supercar",     2005,2015,"8.0 W16 Quad-SC 1001cv Veyron",  1001,7993,"gasoline","car","France"),
    ("bugatti_moderno","Bugatti","France","bugatti_veyron", "Veyron (W16 — 2005–2015)",     "supercar",     2010,2015,"8.0 W16 Quad-SC 1200cv Super Sport",1200,7993,"gasoline","car","France"),
    ("bugatti_moderno","Bugatti","France","bugatti_veyron", "Veyron (W16 — 2005–2015)",     "decapottabile",2012,2015,"8.0 W16 Quad-SC 1001cv Grand Sport",1001,7993,"gasoline","car","France"),
    ("bugatti_moderno","Bugatti","France","bugatti_chiron", "Chiron (W16 — 2016+)",         "supercar",     2016,2024,"8.0 W16 Quad-SC 1500cv Chiron",  1500,7993,"gasoline","car","France"),
    ("bugatti_moderno","Bugatti","France","bugatti_chiron", "Chiron (W16 — 2016+)",         "supercar",     2021,2024,"8.0 W16 Quad-SC 1600cv Super Sport 300+",1600,7993,"gasoline","car","France"),
    ("bugatti_moderno","Bugatti","France","bugatti_chiron", "Chiron (W16 — 2016+)",         "supercar",     2022,2024,"8.0 W16 + 3E 1800cv Bolide pista",1800,7993,"plug_in_hybrid","car","France"),
    ("bugatti_moderno","Bugatti","France","bugatti_tourbillon","Tourbillon (V16 — 2026+)",  "supercar",     2026,2026,"8.3 V16 NA + PHEV 1800cv",        1800,8260,"plug_in_hybrid","car","France"),

    # ── KOENIGSEGG ───────────────────────────────────────────────────
    ("koenigsegg","Koenigsegg","Sweden","koenigsegg_ccx",    "CCX / CCXR",                 "supercar",     2006,2010,"4.7 V8 Twin-SC 806cv CCX",        806,4700,"gasoline","car","Sweden"),
    ("koenigsegg","Koenigsegg","Sweden","koenigsegg_ccx",    "CCX / CCXR",                 "supercar",     2007,2010,"4.7 V8 Twin-SC 1018cv CCXR biofuel",1018,4700,"gasoline","car","Sweden"),
    ("koenigsegg","Koenigsegg","Sweden","koenigsegg_agera",  "Agera / R / One:1",          "supercar",     2011,2018,"5.0 V8 Twin-SC 940cv Agera",       940,5000,"gasoline","car","Sweden"),
    ("koenigsegg","Koenigsegg","Sweden","koenigsegg_agera",  "Agera / R / One:1",          "supercar",     2011,2018,"5.0 V8 Twin-SC 1000cv Agera R",   1000,5000,"gasoline","car","Sweden"),
    ("koenigsegg","Koenigsegg","Sweden","koenigsegg_agera",  "Agera / R / One:1",          "supercar",     2014,2015,"5.0 V8 Twin-SC 1341cv One:1",     1341,5000,"gasoline","car","Sweden"),
    ("koenigsegg","Koenigsegg","Sweden","koenigsegg_jesko",  "Jesko / Jesko Absolut",      "supercar",     2020,2026,"5.0 V8 Twin-SC 1280cv Jesko",     1280,5000,"gasoline","car","Sweden"),
    ("koenigsegg","Koenigsegg","Sweden","koenigsegg_jesko",  "Jesko / Jesko Absolut",      "supercar",     2020,2026,"5.0 V8 Twin-SC 1600cv Jesko Absolut",1600,5000,"gasoline","car","Sweden"),
    ("koenigsegg","Koenigsegg","Sweden","koenigsegg_regera", "Regera (PHEV)",              "supercar",     2016,2020,"5.0 V8 + 3E PHEV 1500cv Regera",  1500,5000,"plug_in_hybrid","car","Sweden"),
    ("koenigsegg","Koenigsegg","Sweden","koenigsegg_gemera", "Gemera (4 posti PHEV)",      "supercar",     2024,2026,"2.0 I3 TT + 3E PHEV 1700cv",      1700,1990,"plug_in_hybrid","car","Sweden"),
    ("koenigsegg","Koenigsegg","Sweden","koenigsegg_cc850",  "CC850",                      "supercar",     2023,2026,"5.0 V8 Twin-SC 1385cv CC850",     1385,5000,"gasoline","car","Sweden"),

    # ── RIMAC ────────────────────────────────────────────────────────
    ("rimac","Rimac","Croatia","rimac_concept_one","Concept One (BEV)",                    "supercar",     2013,2018,"4x Motori Elettrici 1088cv",       1088,None,"electric","car","Croatia"),
    ("rimac","Rimac","Croatia","rimac_nevera",     "Nevera (BEV — 2023+)",                 "supercar",     2023,2026,"4x Motori Elettrici AWD 1914cv",   1914,None,"electric","car","Croatia"),

    # ── LAMBORGHINI MODERNA ──────────────────────────────────────────
    ("lamborghini","Lamborghini","Italy","lambo_revuelto",  "Revuelto (LB744 — 2023+)",    "supercar",     2023,2026,"V12 6.5 + 3E PHEV 1001cv",        1001,6498,"plug_in_hybrid","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_revuelto",  "Revuelto (LB744 — 2023+)",    "supercar",     2024,2026,"V12 6.5 + 3E PHEV 1015cv update", 1015,6498,"plug_in_hybrid","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_urus",       "Urus S / Performante",        "suv",          2018,2026,"4.0 V8 TT 650cv Urus S",           650,3996,"gasoline","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_urus",       "Urus S / Performante",        "suv",          2022,2026,"4.0 V8 TT 666cv Performante",      666,3996,"gasoline","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_urus",       "Urus S / Performante",        "suv",          2024,2026,"4.0 V8 TT PHEV 800cv Urus SE",     800,3996,"plug_in_hybrid","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_huracan",    "Huracán EVO / STO / Sterrato","supercar",     2014,2024,"V10 5.2 610cv LP610-4",            610,5204,"gasoline","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_huracan",    "Huracán EVO / STO / Sterrato","supercar",     2019,2024,"V10 5.2 640cv EVO AWD",            640,5204,"gasoline","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_huracan",    "Huracán EVO / STO / Sterrato","supercar",     2020,2024,"V10 5.2 640cv EVO RWD",            640,5204,"gasoline","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_huracan",    "Huracán EVO / STO / Sterrato","supercar",     2021,2024,"V10 5.2 640cv STO RWD pista",     640,5204,"gasoline","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_huracan",    "Huracán EVO / STO / Sterrato","suv",          2023,2024,"V10 5.2 610cv Sterrato offroad",   610,5204,"gasoline","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_huracan_tecnica","Huracán Tecnica (2022+)", "supercar",     2022,2024,"V10 5.2 640cv Tecnica RWD",        640,5204,"gasoline","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_aventador",  "Aventador LP700/S/SVJ",       "supercar",     2011,2022,"V12 6.5 700cv LP700-4",            700,6498,"gasoline","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_aventador",  "Aventador LP700/S/SVJ",       "supercar",     2017,2022,"V12 6.5 740cv S LP740-4",          740,6498,"gasoline","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_aventador",  "Aventador LP700/S/SVJ",       "supercar",     2019,2022,"V12 6.5 770cv SVJ LP770-4",        770,6498,"gasoline","car","Italy"),
    ("lamborghini","Lamborghini","Italy","lambo_countach_2022","Countach LPI 800-4 (2022)", "supercar",     2022,2022,"V12 6.5 MHEV 803cv Tribute",      803,6498,"mild_hybrid","car","Italy"),

    # ── McLAREN ──────────────────────────────────────────────────────
    ("mclaren","McLaren","UK","mclaren_750s",      "750S Coupé / Spider (2023+)",          "supercar",     2023,2026,"4.0 V8 TT 750cv M840T",            750,3994,"gasoline","car","UK"),
    ("mclaren","McLaren","UK","mclaren_750s",      "750S Coupé / Spider (2023+)",          "supercar",     2023,2026,"4.0 V8 TT 750cv 750S Spider",      750,3994,"gasoline","car","UK"),
    ("mclaren","McLaren","UK","mclaren_artura",    "Artura PHEV (2022+)",                  "supercar",     2022,2026,"3.0 V6 TT PHEV 700cv M630",        700,2993,"plug_in_hybrid","car","UK"),
    ("mclaren","McLaren","UK","mclaren_gt",        "GT (Gran Turismo)",                    "supercar",     2019,2022,"4.0 V8 TT 620cv M840T GT",         620,3994,"gasoline","car","UK"),
    ("mclaren","McLaren","UK","mclaren_765lt",     "765LT / Spider",                       "supercar",     2020,2022,"4.0 V8 TT 765cv 765LT Coupé",      765,3994,"gasoline","car","UK"),
    ("mclaren","McLaren","UK","mclaren_765lt",     "765LT / Spider",                       "supercar",     2021,2022,"4.0 V8 TT 765cv 765LT Spider",     765,3994,"gasoline","car","UK"),
    ("mclaren","McLaren","UK","mclaren_720s",      "720S / Spider (2017+)",                "supercar",     2017,2022,"4.0 V8 TT 720cv M840T Coupé",      720,3994,"gasoline","car","UK"),
    ("mclaren","McLaren","UK","mclaren_720s",      "720S / Spider (2017+)",                "supercar",     2018,2022,"4.0 V8 TT 720cv 720S Spider",      720,3994,"gasoline","car","UK"),
    ("mclaren","McLaren","UK","mclaren_570s",      "570S / 570GT / 600LT",                 "supercar",     2015,2021,"3.8 V8 TT 570cv M838T 570S",       570,3799,"gasoline","car","UK"),
    ("mclaren","McLaren","UK","mclaren_570s",      "570S / 570GT / 600LT",                 "supercar",     2018,2020,"3.8 V8 TT 600cv 600LT",            600,3799,"gasoline","car","UK"),
    ("mclaren","McLaren","UK","mclaren_p1",        "P1 / P1 GTR (2013–2015)",              "supercar",     2013,2015,"3.8 V8 TT PHEV 903cv M838TQ",      903,3799,"plug_in_hybrid","car","UK"),
    ("mclaren","McLaren","UK","mclaren_p1",        "P1 / P1 GTR (2013–2015)",              "supercar",     2015,2016,"3.8 V8 TT 986cv GTR pista",        986,3799,"gasoline","car","UK"),
    ("mclaren","McLaren","UK","mclaren_senna",     "Senna / GTR (2018–2019)",              "supercar",     2018,2020,"4.0 V8 TT 800cv M840T Senna",      800,3994,"gasoline","car","UK"),
    ("mclaren","McLaren","UK","mclaren_speedtail",  "Speedtail (PHEV — 2020)",             "supercar",     2020,2021,"4.0 V8 TT PHEV 1055cv hybrid",    1055,3994,"plug_in_hybrid","car","UK"),
    ("mclaren","McLaren","UK","mclaren_f1",        "F1 (storico — 1992–1998)",             "supercar",     1992,1998,"6.1 BMW S70/2 V12 627cv",           627,6064,"gasoline","car","UK"),

    # ── ASTON MARTIN ─────────────────────────────────────────────────
    ("aston_martin","Aston Martin","UK","aston_db12",         "DB12 (2024+)",               "coupé",        2023,2026,"4.0 V8 BiT 680cv DB12",            680,3982,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_db12_volante",  "DB12 Volante (2024+)",       "decapottabile",2024,2026,"4.0 V8 BiT 680cv DB12 Volante",   680,3982,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_db11",          "DB11 V8 / V12 (2016–2023)", "coupé",        2016,2023,"4.0 V8 BiT 510cv DB11 V8",         510,3982,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_db11",          "DB11 V8 / V12 (2016–2023)", "coupé",        2016,2023,"5.2 V12 BiT 600cv DB11 V12",       600,5204,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_db11",          "DB11 V8 / V12 (2016–2023)", "coupé",        2018,2023,"5.2 V12 BiT 639cv AMR",            639,5204,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_vantage_2018",  "Vantage (2018–2024)",        "coupé",        2018,2024,"4.0 V8 BiT 510cv Vantage",         510,3982,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_martin_vantage_2024","Vantage (2024+)",        "coupé",        2024,2026,"4.0 V8 BiT 665cv Vantage new",    665,3982,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_martin_vantage_f1_2024","Vantage F1 Safety Car","coupé",      2024,2026,"4.0 V8 BiT 665cv F1 Edition",      665,3982,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_dbs_superleggera","DBS Superleggera",          "coupé",        2018,2023,"5.2 V12 BiT 725cv Superleggera",  725,5204,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_martin_dbs770",  "DBS 770 Ultimate (Final)",  "coupé",        2023,2024,"5.2 V12 BiT 770cv Coupé",          770,5204,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_martin_dbs770",  "DBS 770 Ultimate (Final)",  "decapottabile",2023,2024,"5.2 V12 BiT 770cv Volante",        770,5204,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_dbx",           "DBX (2020+)",                "suv",          2020,2026,"4.0 V8 BiT 550cv DBX",             550,3982,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_dbx707",        "DBX707 (2022+)",             "suv",          2022,2026,"4.0 V8 BiT 707cv DBX707",          707,3982,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_valhalla",      "Valhalla PHEV (2025+)",      "supercar",     2025,2026,"4.0 V8 BiT PHEV 937cv",           937,3982,"plug_in_hybrid","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_valkyrie",      "Valkyrie (Ibrida pista)",    "supercar",     2021,2026,"6.5 V12 NA + KERS 1160cv AMR Pro",1160,6497,"plug_in_hybrid","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_martin_valour", "Valour (V12 MT — 2024)",     "coupé",        2024,2026,"5.2 V12 BiT 715cv Valour Manual",  715,5204,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_one77",         "One-77 (2010–2012)",         "supercar",     2010,2012,"7.3 V12 NA 750cv One-77",          750,7312,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_vanquish_2012", "Vanquish / S / Zagato (2012)","coupé",       2012,2018,"6.0 V12 568cv Vanquish",           568,5935,"gasoline","car","UK"),
    ("aston_martin","Aston Martin","UK","aston_vanquish_2012", "Vanquish / S / Zagato (2012)","coupé",       2014,2018,"6.0 V12 595cv Vanquish S",         595,5935,"gasoline","car","UK"),

    # ── TESLA (nuovi modelli) ─────────────────────────────────────────
    ("tesla","Tesla","USA","tes_model_s",   "Model S Long Range / Plaid (2021+)",          "berlina",      2021,2026,"Elettrico RWD 670cv Long Range",    670,None,"electric","car","USA"),
    ("tesla","Tesla","USA","tes_model_s",   "Model S Long Range / Plaid (2021+)",          "berlina",      2021,2026,"Elettrico AWD 1020cv Plaid",        1020,None,"electric","car","USA"),
    ("tesla","Tesla","USA","tes_model_x",   "Model X Long Range / Plaid (2021+)",          "suv",          2021,2026,"Elettrico AWD 670cv Long Range",    670,None,"electric","car","USA"),
    ("tesla","Tesla","USA","tes_model_x",   "Model X Long Range / Plaid (2021+)",          "suv",          2021,2026,"Elettrico AWD 1020cv Plaid",        1020,None,"electric","car","USA"),
    ("tesla","Tesla","USA","tes_cybertruck", "Cybertruck (2023+)",                         "pickup",        2023,2026,"Elettrico AWD 600cv All-Wheel Drive",600,None,"electric","car","USA"),
    ("tesla","Tesla","USA","tes_cybertruck", "Cybertruck (2023+)",                         "pickup",        2023,2026,"Elettrico AWD 845cv Cyberbeast",    845,None,"electric","car","USA"),
    ("tesla","Tesla","USA","tes_roadster_2", "Roadster (2ª gen — 2025+)",                  "supercar",     2025,2026,"Elettrico AWD 1000+ cv",            1000,None,"electric","car","USA"),
    ("tesla","Tesla","USA","tes_semi",       "Tesla Semi (2022+)",                         "truck",         2022,2026,"Elettrico AWD Semi 1342cv",         1342,None,"electric","car","USA"),
]

print(f"-- {len(rows)} righe da inserire")
print("INSERT INTO vehicle_specs")
print("  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)")
print("VALUES")
for i, r in enumerate(rows):
    sep = "," if i < len(rows) - 1 else ""
    # r[10]=cc (int|None), r[11]=fuel_type (str)
    cc_val = "NULL" if r[10] is None else str(r[10])
    print(f"  (gen_random_uuid(), '{r[0]}', '{r[1]}', '{r[2]}', '{r[3]}', '{r[4]}', '{r[5]}', {r[6]}, {r[7]}, '{r[8]}', {r[9]}, {cc_val}, '{r[11]}', '{r[12]}', '{r[13]}'){sep}")
print()
print("ON CONFLICT DO NOTHING;")
print()
print(f"-- Fine: {len(rows)} motorizzazioni — batch 6")

-- Batch 8 — Lincoln USA + XPENG / Zeekr EV China + Genesis Korea → 13,000+
INSERT INTO vehicle_specs
  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)
VALUES
  -- Lincoln (5 righe)
  (gen_random_uuid(), 'lincoln', 'Lincoln', 'USA', 'lincoln_navigator_2024', 'Navigator 2024', 'suv', 2022, 2026, '3.5L EcoBoost V6 440hp AWD Black Label', 440, 3497, 'gasoline', 'car', 'North America'),
  (gen_random_uuid(), 'lincoln', 'Lincoln', 'USA', 'lincoln_aviator_phev', 'Aviator Grand Touring PHEV', 'suv', 2020, 2026, '3.0L EcoBoost V6 PHEV AWD 494hp', 494, 2999, 'plug_in_hybrid', 'car', 'North America'),
  (gen_random_uuid(), 'lincoln', 'Lincoln', 'USA', 'lincoln_corsair', 'Corsair / Grand Touring', 'suv', 2020, 2026, '2.0 EcoBoost 250hp FWD', 250, 1999, 'gasoline', 'car', 'North America'),
  (gen_random_uuid(), 'lincoln', 'Lincoln', 'USA', 'lincoln_corsair_phev', 'Corsair Grand Touring PHEV', 'suv', 2021, 2026, '2.5L PHEV AWD 266hp Grand Touring', 266, 2488, 'plug_in_hybrid', 'car', 'North America'),
  (gen_random_uuid(), 'lincoln', 'Lincoln', 'USA', 'lin_continental_mk9', 'Continental Mk9 (CD539 — 2017–2020)', 'berlina', 2017, 2020, '3.0 V6 EcoBoost 400hp AWD', 400, 2956, 'gasoline', 'car', 'North America'),
  -- XPENG (4 righe)
  (gen_random_uuid(), 'xpeng', 'XPENG', 'China', 'xpeng_p7', 'P7 / P7i', 'berlina', 2020, 2026, 'Elettrico RWD 316hp P7 Standard Range', 316, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'xpeng', 'XPENG', 'China', 'xpeng_p7', 'P7 / P7i', 'berlina', 2021, 2026, 'Elettrico AWD 480hp P7+ Performance', 480, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'xpeng', 'XPENG', 'China', 'xpeng_g9', 'G9', 'suv', 2022, 2026, 'Elettrico AWD 551hp G9 Max', 551, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'xpeng', 'XPENG', 'China', 'xpeng_g6', 'G6', 'suv', 2023, 2026, 'Elettrico RWD 218hp G6 Standard Range', 218, NULL, 'electric', 'car', 'Asia'),
  -- Zeekr (4 righe)
  (gen_random_uuid(), 'zeekr', 'Zeekr', 'China', 'zeekr_001', '001', 'fastback', 2021, 2026, 'Elettrico AWD 544hp 001 Privilege', 544, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'zeekr', 'Zeekr', 'China', 'zeekr_001', '001', 'fastback', 2021, 2026, 'Elettrico RWD 428hp 001 You', 428, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'zeekr', 'Zeekr', 'China', 'zeekr_009', '009', 'mpv', 2022, 2026, 'Elettrico AWD 536hp 009 ME', 536, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'zeekr', 'Zeekr', 'China', 'zeekr_x', 'X', 'suv', 2023, 2026, 'Elettrico FWD 200hp X Standard', 200, NULL, 'electric', 'car', 'Asia'),
  -- Genesis (7 righe)
  (gen_random_uuid(), 'genesis', 'Genesis', 'South Korea', 'genesis_gv60', 'GV60 / Sport / Sport Plus', 'suv', 2022, 2026, 'Elettrico AWD 429hp Performance', 429, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'genesis', 'Genesis', 'South Korea', 'genesis_gv60', 'GV60 / Sport / Sport Plus', 'suv', 2022, 2026, 'Elettrico AWD 320hp Sport', 320, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'genesis', 'Genesis', 'South Korea', 'genesis_gv70_electrified', 'GV70 Electrified', 'suv', 2022, 2026, 'Elettrico AWD 360hp Electrified', 360, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'genesis', 'Genesis', 'South Korea', 'genesis_g80_electrified', 'G80 Electrified', 'berlina', 2021, 2026, 'Elettrico AWD 365hp Electrified G80', 365, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'genesis', 'Genesis', 'South Korea', 'genesis_g90_2024', 'G90 2024', 'berlina', 2022, 2026, '3.5T V6 BiTurbo 380hp G90 AWD', 380, 3470, 'gasoline', 'car', 'Asia'),
  (gen_random_uuid(), 'genesis', 'Genesis', 'South Korea', 'genesis_gv80_2024', 'GV80 2024', 'suv', 2020, 2026, '3.5T V6 BiTurbo 375hp GV80', 375, 3470, 'gasoline', 'car', 'Asia'),
  (gen_random_uuid(), 'genesis', 'Genesis', 'South Korea', 'genesis_g70_shooting_brake', 'G70 Shooting Brake', 'wagon', 2021, 2026, '2.0T 252hp G70 Shooting Brake', 252, 1998, 'gasoline', 'car', 'Asia')
ON CONFLICT DO NOTHING;

-- Fine: 20 motorizzazioni — batch 8 → 12,985 + 20 = 13,005 🎯

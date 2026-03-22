-- Batch 9 — BARCHE: Jet Ski + Yacht + Barca a vela + Motorboat (78 motorizzazioni)
INSERT INTO vehicle_specs
  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)
VALUES
  -- Sea-Doo (BRP) — Jet Ski / PWC
  (gen_random_uuid(), 'seadoo', 'Sea-Doo (BRP)', 'Canada', 'sd_spark', 'Spark 60/90cv (2014+)', 'pwc', 2014, 2026, 'Rotax 900 ACE 60cv', 60, 899, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'seadoo', 'Sea-Doo (BRP)', 'Canada', 'sd_spark', 'Spark 60/90cv (2014+)', 'pwc', 2014, 2026, 'Rotax 900 HO ACE 90cv', 90, 899, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'seadoo', 'Sea-Doo (BRP)', 'Canada', 'sd_gti_130', 'GTI 130/170 (2018+)', 'pwc', 2018, 2026, 'Rotax 900 HO ACE 130cv', 130, 899, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'seadoo', 'Sea-Doo (BRP)', 'Canada', 'sd_gti_130', 'GTI 130/170 (2018+)', 'pwc', 2018, 2026, 'Rotax 1503 NA 170cv', 170, 1503, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'seadoo', 'Sea-Doo (BRP)', 'Canada', 'sd_gtx_230', 'GTX 230/300 (2018+)', 'pwc', 2018, 2026, 'Rotax 1503 Turbo 230cv', 230, 1503, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'seadoo', 'Sea-Doo (BRP)', 'Canada', 'sd_gtx_230', 'GTX 230/300 (2018+)', 'pwc', 2018, 2026, 'Rotax 1503 Turbo 300cv', 300, 1503, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'seadoo', 'Sea-Doo (BRP)', 'Canada', 'sd_rxt_x_300', 'RXT-X 300 (2018+)', 'pwc', 2018, 2026, 'Rotax 1630 ACE Turbo 300cv', 300, 1630, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'seadoo', 'Sea-Doo (BRP)', 'Canada', 'sd_rxp_x_325', 'RXP-X 325 (2022+)', 'pwc', 2022, 2026, 'Rotax 1630 ACE Turbo 325cv RS performance', 325, 1630, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'seadoo', 'Sea-Doo (BRP)', 'Canada', 'sd_fish_pro', 'Fish Pro Scout/Trophy (2020+)', 'pwc', 2020, 2026, 'Rotax 1503 NA 170cv Scout', 170, 1503, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'seadoo', 'Sea-Doo (BRP)', 'Canada', 'sd_fish_pro', 'Fish Pro Scout/Trophy (2020+)', 'pwc', 2021, 2026, 'Rotax 1630 Turbo 255cv Trophy', 255, 1630, 'gasoline', 'boat', 'Global'),
  -- Yamaha WaveRunner
  (gen_random_uuid(), 'yamaha_watercraft', 'Yamaha WaveRunner', 'Japan', 'yw_ex_sport', 'EX Sport / EX Deluxe (2017+)', 'pwc', 2017, 2026, 'TR-1 HO 1049cc 100cv', 100, 1049, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'yamaha_watercraft', 'Yamaha WaveRunner', 'Japan', 'yw_vx_cruiser', 'VX Cruiser HO (2007+)', 'pwc', 2017, 2026, 'TR-1 MR HO 110cv VX Cruiser HO', 110, 1049, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'yamaha_watercraft', 'Yamaha WaveRunner', 'Japan', 'yw_fxho', 'FX HO / FX Cruiser HO (2014+)', 'pwc', 2014, 2026, 'Yamaha 1812cc HO 180cv', 180, 1812, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'yamaha_watercraft', 'Yamaha WaveRunner', 'Japan', 'yw_fxsvho', 'FX SVHO / FX Cruiser SVHO (2014+)', 'pwc', 2014, 2026, 'Yamaha SHO 1812cc SC 260cv', 260, 1812, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'yamaha_watercraft', 'Yamaha WaveRunner', 'Japan', 'yw_gp1800r_svho', 'GP1800R SVHO (2018+)', 'pwc', 2018, 2026, 'SHO 1812cc SC 270cv GP1800R SVHO 2024', 270, 1812, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'yamaha_watercraft', 'Yamaha WaveRunner', 'Japan', 'yw_xltd_svho', 'ExSR / XK1800 (2024+)', 'pwc', 2024, 2026, 'Yamaha XK1800cc SC 310cv', 310, 1800, 'gasoline', 'boat', 'Global'),
  -- Kawasaki Jet Ski
  (gen_random_uuid(), 'kawasaki_watercraft', 'Kawasaki Jet Ski', 'Japan', 'kw_stx_160', 'STX 160 / 160LX (2020+)', 'pwc', 2020, 2026, '1498cc 4-cyl 160cv', 160, 1498, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'kawasaki_watercraft', 'Kawasaki Jet Ski', 'Japan', 'kw_ultra_310lx', 'Ultra 310LX / 310R (2014+)', 'pwc', 2014, 2026, '1498cc SC 310cv LX', 310, 1498, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'kawasaki_watercraft', 'Kawasaki Jet Ski', 'Japan', 'kw_sxr_160', 'SX-R 160 (2021+)', 'pwc', 2021, 2026, '1498cc EFI 160cv SXR Pro standup', 160, 1498, 'gasoline', 'boat', 'Global'),
  -- Riva (Ferretti Group)
  (gen_random_uuid(), 'riva_boats', 'Riva', 'Italy', 'riva_rivamare_38', '38 Rivamare (2017+)', 'motorboat', 2017, 2026, 'Volvo Penta D6 2x 370cv', 740, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'riva_boats', 'Riva', 'Italy', 'riva_iseo_44', '44 Iseo (2019+)', 'motorboat', 2019, 2026, 'Volvo Penta IPS 600 2x 435cv', 870, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'riva_boats', 'Riva', 'Italy', 'riva_dolceriva', 'Dolceriva 27 (2019+)', 'motorboat', 2019, 2026, 'Volvo Penta D4 2x 260cv', 520, NULL, 'diesel', 'boat', 'Europe'),
  -- Azimut Yachts
  (gen_random_uuid(), 'azimut_yachts', 'Azimut Yachts', 'Italy', 'az_atlantis_43', 'Atlantis 43 (2018+)', 'yacht', 2018, 2026, 'Volvo Penta IPS 600 2x 435cv', 870, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'azimut_yachts', 'Azimut Yachts', 'Italy', 'az_s6', 'S6 Atlantis (2020+)', 'yacht', 2020, 2026, 'Volvo Penta IPS 1200 2x 900cv', 1800, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'azimut_yachts', 'Azimut Yachts', 'Italy', 'az_s7', 'S7 (2018+)', 'yacht', 2018, 2026, 'MAN V12 2x 1200cv', 2400, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'azimut_yachts', 'Azimut Yachts', 'Italy', 'az_s8', 'S8 Grande (2020+)', 'yacht', 2020, 2026, 'MAN V12 2x 1550cv', 3100, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'azimut_yachts', 'Azimut Yachts', 'Italy', 'az_fly_58', 'Fly 58 (2019+)', 'yacht', 2019, 2026, 'Volvo Penta IPS 1200 2x 900cv', 1800, NULL, 'diesel', 'boat', 'Europe'),
  -- Sunseeker
  (gen_random_uuid(), 'sunseeker', 'Sunseeker', 'UK', 'ss_predator_55', 'Predator 55 (2022+)', 'yacht', 2022, 2026, 'Volvo Penta IPS 600 2x 435cv', 870, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'sunseeker', 'Sunseeker', 'UK', 'ss_predator_55', 'Predator 55 (2022+)', 'yacht', 2022, 2026, 'MAN V8 2x 600cv turbo', 1200, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'sunseeker', 'Sunseeker', 'UK', 'ss_manhattan_55', 'Manhattan 55 (2019+)', 'yacht', 2019, 2026, 'Volvo Penta D6 2x 480cv IPS600', 960, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'sunseeker', 'Sunseeker', 'UK', 'ss_predator_74', 'Predator 74 (2020+)', 'yacht', 2020, 2026, 'MAN V12 2x 1000cv', 2000, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'sunseeker', 'Sunseeker', 'UK', 'ss_ocean_182', 'Ocean 182 (2023+)', 'superyacht', 2023, 2026, 'MTU 16V 2000 M94 4x 4000cv', 16000, NULL, 'diesel', 'boat', 'Global'),
  -- Princess Yachts
  (gen_random_uuid(), 'princess_yachts', 'Princess Yachts', 'UK', 'py_v40', 'V40 (2021+)', 'yacht', 2021, 2026, 'Volvo Penta D4 2x 260cv', 520, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'princess_yachts', 'Princess Yachts', 'UK', 'py_v55', 'V55 (2022+)', 'yacht', 2022, 2026, 'Volvo Penta IPS 600 2x 435cv', 870, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'princess_yachts', 'Princess Yachts', 'UK', 'py_s62', 'S62 (2021+)', 'yacht', 2021, 2026, 'MAN V8 2x 800cv', 1600, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'princess_yachts', 'Princess Yachts', 'UK', 'py_y85', 'Y85 (2020+)', 'superyacht', 2020, 2026, 'MTU 12V 2000 M96 2x 2400cv', 4800, NULL, 'diesel', 'boat', 'Global'),
  -- Jeanneau
  (gen_random_uuid(), 'jeanneau', 'Jeanneau', 'France', 'jean_so349', 'Sun Odyssey 349 (2015+)', 'sailboat', 2015, 2026, 'Yanmar 4JH40 40hp saildrive', 40, 1960, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'jeanneau', 'Jeanneau', 'France', 'jean_so410', 'Sun Odyssey 410 (2017+)', 'sailboat', 2017, 2026, 'Yanmar 4JH4-TE 54hp', 54, 1995, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'jeanneau', 'Jeanneau', 'France', 'jean_so490', 'Sun Odyssey 490 (2018+)', 'sailboat', 2018, 2026, 'Yanmar 4JH80 80hp SO 490 Power', 80, 1995, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'jeanneau', 'Jeanneau', 'France', 'jean_db43', 'DB 43 Cruiser (2021+)', 'motorboat', 2021, 2026, 'Volvo Penta D4-300 2x 300cv', 600, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'jeanneau', 'Jeanneau', 'France', 'jean_merry_fisher_795', 'Merry Fisher 795 (2018+)', 'motorboat', 2018, 2026, 'Yamaha F200 200cv outboard', 200, 3352, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'jeanneau', 'Jeanneau', 'France', 'jeanneau_leader_10_5', 'Leader 10.5', 'motorboat', 2019, 2026, 'Yamaha F300 300hp Outboard x2', 300, NULL, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'jeanneau', 'Jeanneau', 'France', 'jeanneau_cap_camarat_10_5', 'Cap Camarat 10.5 WA', 'motorboat', 2020, 2026, 'Mercury Verado 300hp Outboard x2', 300, NULL, 'gasoline', 'boat', 'Europe'),
  -- Bénéteau
  (gen_random_uuid(), 'beneteau', 'Bénéteau', 'France', 'ben_oceanis341', 'Oceanis 34.1 (2019+)', 'sailboat', 2019, 2026, 'Yanmar 3JH40 40hp saildrive', 40, 1642, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'beneteau', 'Bénéteau', 'France', 'ben_oceanis_46', 'Oceanis 46.1 (2019+)', 'sailboat', 2019, 2026, 'Yanmar 4JH80 80hp Oceanis 46.1 Power', 80, 1995, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'beneteau', 'Bénéteau', 'France', 'ben_flyer7', 'Flyer 7 SUNdeck (2018+)', 'motorboat', 2018, 2026, 'Mercury F150 150cv stern', 150, 2785, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'beneteau', 'Bénéteau', 'France', 'ben_swift_trawler_35', 'Swift Trawler 35 (2019+)', 'motorboat', 2019, 2026, 'Volvo Penta D4-300 2x 300cv IPS', 600, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'beneteau', 'Bénéteau', 'France', 'ben_first_27', 'First 27 (2020+)', 'sailboat', 2020, 2026, 'Torqeedo Cruise 10.0R 10kW electric', 13, NULL, 'electric', 'boat', 'Europe'),
  (gen_random_uuid(), 'beneteau', 'Bénéteau', 'France', 'beneteau_gran_turismo_45', 'Gran Turismo 45', 'motorboat', 2018, 2026, 'Volvo Penta IPS 600 435hp Twin', 435, NULL, 'diesel', 'boat', 'Europe'),
  -- Fountaine Pajot (Catamarani)
  (gen_random_uuid(), 'fountaine_pajot', 'Fountaine Pajot', 'France', 'fp_lucia_40', 'Lucia 40 Catamaran (2015+)', 'catamaran', 2015, 2026, 'Yanmar 4JH40 2x 40hp saildrive', 80, 1960, 'diesel', 'boat', 'Global'),
  (gen_random_uuid(), 'fountaine_pajot', 'Fountaine Pajot', 'France', 'fp_saona_47', 'Saona 47 Catamaran (2018+)', 'catamaran', 2018, 2026, 'Volvo Penta D2 2x 57hp saildrive', 114, NULL, 'diesel', 'boat', 'Global'),
  (gen_random_uuid(), 'fountaine_pajot', 'Fountaine Pajot', 'France', 'fp_alegria_67', 'Alegria 67 Catamaran (2020+)', 'catamaran', 2020, 2026, 'Volvo Penta D6 2x 440hp', 880, NULL, 'diesel', 'boat', 'Global'),
  (gen_random_uuid(), 'fountaine_pajot', 'Fountaine Pajot', 'France', 'fp_elba_45', 'Elba 45 Catamaran (2021+)', 'catamaran', 2021, 2026, 'Yanmar 4JH57 2x 57hp electric hybrid', 114, 1995, 'diesel', 'boat', 'Global'),
  -- Lagoon Catamarans
  (gen_random_uuid(), 'lagoon_cats', 'Lagoon Catamarans', 'France', 'lag_46', 'Lagoon 46 (2019+)', 'catamaran', 2019, 2026, 'Yanmar 4JH57 2x 57hp saildrive', 114, 1995, 'diesel', 'boat', 'Global'),
  (gen_random_uuid(), 'lagoon_cats', 'Lagoon Catamarans', 'France', 'lag_55', 'Lagoon 55 (2017+)', 'catamaran', 2017, 2026, 'Yanmar 4JH80 2x 80hp Performance', 160, 1995, 'diesel', 'boat', 'Global'),
  (gen_random_uuid(), 'lagoon_cats', 'Lagoon Catamarans', 'France', 'lag_400_s2', 'Lagoon 400 S2 (2012–2020)', 'catamaran', 2012, 2020, 'Yanmar 3JH40 2x 40hp saildrive', 80, 1642, 'diesel', 'boat', 'Global'),
  -- Malibu Boats (wake/watersport)
  (gen_random_uuid(), 'malibu_boats', 'Malibu Boats', 'USA', 'mal_wakesetter_22', 'Wakesetter 22 LSV / MXZ (2018+)', 'wakeboat', 2018, 2026, 'Monsoon M6Di 6.0L 430cv', 430, 5967, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'malibu_boats', 'Malibu Boats', 'USA', 'mal_wakesetter_22', 'Wakesetter 22 LSV / MXZ (2018+)', 'wakeboat', 2018, 2026, 'Monsoon M6Di 6.2L 550cv', 550, 6200, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'malibu_boats', 'Malibu Boats', 'USA', 'mal_wakesetter_25lsv', 'Wakesetter 25 LSV (2018+)', 'wakeboat', 2018, 2026, 'Monsoon M6Di 6.2L 575cv', 575, 6200, 'gasoline', 'boat', 'North America'),
  -- Grady-White
  (gen_random_uuid(), 'grady_white', 'Grady-White Boats', 'USA', 'gw_freedom_235', 'Freedom 235 (2018+)', 'motorboat', 2018, 2026, 'Yamaha F150 150cv outboard', 150, 2785, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'grady_white', 'Grady-White Boats', 'USA', 'gw_canyon_271', 'Canyon 271 (2018+)', 'motorboat', 2018, 2026, 'Yamaha F350 350cv x2', 700, NULL, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'grady_white', 'Grady-White Boats', 'USA', 'gw_marlin_300', 'Marlin 300 (2019+)', 'motorboat', 2019, 2026, 'Yamaha F350 350cv x2', 700, NULL, 'gasoline', 'boat', 'North America'),
  -- Sea Ray
  (gen_random_uuid(), 'sea_ray', 'Sea Ray', 'USA', 'sr_spx_190', 'SPX 190 Outboard (2019+)', 'motorboat', 2019, 2026, 'Mercury F150 150cv outboard', 150, 2785, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'sea_ray', 'Sea Ray', 'USA', 'sr_slx_250', 'SLX 250 Outboard (2021+)', 'motorboat', 2021, 2026, 'Mercury V8 250cv outboard', 250, 4600, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'sea_ray', 'Sea Ray', 'USA', 'sr_sundancer_320', 'Sundancer 320 (2018+)', 'motorboat', 2018, 2026, 'Mercruiser 6.2L 350cv sterndrive', 350, 6200, 'gasoline', 'boat', 'North America'),
  -- Zodiac Marine (RIB)
  (gen_random_uuid(), 'zodiac_marine', 'Zodiac Marine', 'France', 'zod_rib_310', 'Medline 2 310 RIB', 'rib', 2015, 2026, 'Honda BF20 20cv 4T outboard', 20, 429, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'zodiac_marine', 'Zodiac Marine', 'France', 'zod_rib_500', 'Bombard Explorer 500 RIB', 'rib', 2015, 2026, 'Yamaha F60 60cv outboard', 60, 996, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'zodiac_marine', 'Zodiac Marine', 'France', 'zod_open_5_5', 'Cadet Open 5.5 (2019+)', 'rib', 2019, 2026, 'Mercury 100cv EFI outboard', 100, 1526, 'gasoline', 'boat', 'Europe'),
  -- Ferretti Yachts
  (gen_random_uuid(), 'ferretti_yachts', 'Ferretti Yachts', 'Italy', 'ferretti_yachts_ferretti_500', 'Ferretti 500', 'yacht', 2018, 2026, 'Volvo Penta IPS 600 2x 435cv', 870, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'ferretti_yachts', 'Ferretti Yachts', 'Italy', 'ferretti_yachts_ferretti_670', 'Ferretti 670', 'yacht', 2019, 2026, 'MAN V8 2x 800cv diesel shaft', 1600, NULL, 'diesel', 'boat', 'Europe'),
  -- Pershing (Ferretti Group)
  (gen_random_uuid(), 'pershing', 'Pershing', 'Italy', 'pershing_pershing_5x', 'Pershing 5X', 'yacht', 2019, 2026, 'Volvo Penta IPS 800 2x 600cv', 1200, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'pershing', 'Pershing', 'Italy', 'pershing_pershing_8x', 'Pershing 8X', 'yacht', 2020, 2026, 'MAN V12 2x 1200cv shaft drive', 2400, NULL, 'diesel', 'boat', 'Europe'),
  -- Benetti (superyacht)
  (gen_random_uuid(), 'benetti', 'Benetti', 'Italy', 'benetti_benetti_oasis_40m', 'Benetti Oasis 40M', 'superyacht', 2020, 2026, 'MTU 12V 2000 M94 2x 1800cv', 3600, NULL, 'diesel', 'boat', 'Global'),
  (gen_random_uuid(), 'benetti', 'Benetti', 'Italy', 'benetti_benetti_b_yond_37m', 'Benetti B.Yond 37M', 'superyacht', 2021, 2026, 'Volvo Penta IPS + Hybrid 2x 900cv', 1800, NULL, 'diesel', 'boat', 'Global'),
  -- Oyster Yachts
  (gen_random_uuid(), 'oyster_yachts', 'Oyster Yachts', 'UK', 'oyster_yachts_oyster_565', 'Oyster 565', 'sailboat', 2018, 2026, 'Yanmar 4JH80 80hp saildrive', 80, 1995, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'oyster_yachts', 'Oyster Yachts', 'UK', 'oyster_yachts_oyster_745', 'Oyster 745', 'sailboat', 2020, 2026, 'Volvo Penta D4-300 150hp saildrive', 150, NULL, 'diesel', 'boat', 'Europe'),
  -- Wajer Yachts
  (gen_random_uuid(), 'wajer_yachts', 'Wajer Yachts', 'Netherlands', 'wajer_yachts_wajer_38', 'Wajer 38', 'motorboat', 2018, 2026, 'Volvo Penta D4 2x 270cv IPS', 540, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'wajer_yachts', 'Wajer Yachts', 'Netherlands', 'wajer_yachts_wajer_55', 'Wajer 55', 'motorboat', 2020, 2026, 'Volvo Penta IPS 600 2x 435cv', 870, NULL, 'diesel', 'boat', 'Europe')
ON CONFLICT DO NOTHING;

-- Fine: 78 motorizzazioni — batch 9 BARCHE
-- Totale atteso: 13,005 + 78 = 13,083

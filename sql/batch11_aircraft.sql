-- Batch 11 — AEROMOBILI: Airliner + Business Jet + Military + Helicopter + GA + Drone + eVTOL (92 motorizzazioni)
-- Nota: hp = spinta in lbf / SHP per turbo-elica/turbina — vehicle_type = 'aircraft'
INSERT INTO vehicle_specs
  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)
VALUES
  -- ===== BOEING (US airliner) =====
  (gen_random_uuid(), 'boeing', 'Boeing', 'USA', 'b_737_max8', 'Boeing 737 MAX 8 (2017+)', 'airliner', 2017, 2026, 'CFM LEAP-1B 2x 28000lbf', 28000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'boeing', 'Boeing', 'USA', 'b_737_max10', 'Boeing 737 MAX 10 (2021+)', 'airliner', 2021, 2026, 'CFM LEAP-1B 2x 29000lbf', 29000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'boeing', 'Boeing', 'USA', 'b_777_300er', 'Boeing 777-300ER (2003+)', 'airliner', 2003, 2026, 'GE90-115B 2x 115300lbf', 115300, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'boeing', 'Boeing', 'USA', 'b_777x', 'Boeing 777X (2025+)', 'airliner', 2025, 2026, 'GE9X-105B1A 2x 105000lbf', 105000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'boeing', 'Boeing', 'USA', 'b_787_9', 'Boeing 787-9 Dreamliner (2014+)', 'airliner', 2014, 2026, 'GEnx-1B76 2x 76100lbf', 76100, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'boeing', 'Boeing', 'USA', 'b_787_9', 'Boeing 787-9 Dreamliner (2014+)', 'airliner', 2014, 2026, 'RR Trent 1000-TEN 2x 74000lbf', 74000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'boeing', 'Boeing', 'USA', 'b_747_8i', 'Boeing 747-8 Intercontinental (2012+)', 'airliner', 2012, 2022, 'GEnx-2B 4x 66500lbf', 66500, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'boeing', 'Boeing', 'USA', 'b_757_200', 'Boeing 757-200 (1982–2005)', 'airliner', 1982, 2005, 'RR RB211-535E4B 2x 43100lbf', 43100, NULL, 'jet_fuel', 'aircraft', 'Global'),
  -- ===== AIRBUS (EU airliner) =====
  (gen_random_uuid(), 'airbus', 'Airbus', 'EU', 'ab_a220_300', 'A220-300 (2016+)', 'airliner', 2016, 2026, 'P&W PW1500G 2x 23300lbf', 23300, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'airbus', 'Airbus', 'EU', 'ab_a320neo', 'A320neo (2016+)', 'airliner', 2016, 2026, 'CFM LEAP-1A 2x 29000lbf', 29000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'airbus', 'Airbus', 'EU', 'ab_a320neo', 'A320neo (2016+)', 'airliner', 2016, 2026, 'P&W PW1100G-JM 2x 27000lbf', 27000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'airbus', 'Airbus', 'EU', 'ab_a321neo', 'A321neo / A321XLR (2017+)', 'airliner', 2017, 2026, 'CFM LEAP-1A 2x 32000lbf', 32000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'airbus', 'Airbus', 'EU', 'ab_a350_900', 'A350-900 (2015+)', 'airliner', 2015, 2026, 'RR Trent XWB-84 2x 84000lbf', 84000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'airbus', 'Airbus', 'EU', 'ab_a350_1000', 'A350-1000 (2018+)', 'airliner', 2018, 2026, 'RR Trent XWB-97 2x 97000lbf', 97000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'airbus', 'Airbus', 'EU', 'ab_a380_800', 'A380-800 (2007–2021)', 'airliner', 2007, 2021, 'RR Trent 970 4x 70000lbf', 70000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'airbus', 'Airbus', 'EU', 'ab_a380_800', 'A380-800 (2007–2021)', 'airliner', 2007, 2021, 'Engine Alliance GP7270 4x 70000lbf', 70000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'airbus', 'Airbus', 'EU', 'ab_a330_900neo', 'A330-900neo (2018+)', 'airliner', 2018, 2026, 'RR Trent 7000 2x 68000lbf', 68000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  -- ===== EMBRAER (BR regional airliner + bizjet) =====
  (gen_random_uuid(), 'embraer', 'Embraer', 'Brazil', 'emb_e175', 'E175 (2004+)', 'airliner', 2004, 2026, 'GE CF34-8E2 2x 14200lbf', 14200, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'embraer', 'Embraer', 'Brazil', 'emb_e190_e2', 'E190-E2 (2018+)', 'airliner', 2018, 2026, 'P&W PW1900G 2x 21000lbf', 21000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'embraer', 'Embraer', 'Brazil', 'embraer_phenom_300e', 'Phenom 300E Business Jet (2019+)', 'business_jet', 2019, 2026, 'P&W Canada PW535E1 3478lbf x2', 3478, 3478, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'embraer', 'Embraer', 'Brazil', 'embraer_praetor_600', 'Praetor 600 (2019+)', 'business_jet', 2019, 2026, 'Honeywell HTF7500E 6540lbf x2', 6540, 6540, 'jet_fuel', 'aircraft', 'Global'),
  -- ===== GULFSTREAM (US business jet) =====
  (gen_random_uuid(), 'gulfstream', 'Gulfstream Aerospace', 'USA', 'g_g280', 'G280 (2012+)', 'business_jet', 2012, 2026, 'Honeywell HTF7250G 2x 7624lbf', 7624, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'gulfstream', 'Gulfstream Aerospace', 'USA', 'g_g500', 'G500 (2018+)', 'business_jet', 2018, 2026, 'P&W PW814GA 2x 14750lbf', 14750, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'gulfstream', 'Gulfstream Aerospace', 'USA', 'g_g600', 'G600 (2019+)', 'business_jet', 2019, 2026, 'P&W PW815GA 2x 15870lbf', 15870, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'gulfstream', 'Gulfstream Aerospace', 'USA', 'g_g650er', 'G650ER (2014+)', 'business_jet', 2014, 2026, 'RR BR725A1-12 2x 16100lbf', 16100, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'gulfstream', 'Gulfstream Aerospace', 'USA', 'g_g700', 'G700 (2022+)', 'business_jet', 2022, 2026, 'RR Pearl 700 2x 18250lbf', 18250, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'gulfstream', 'Gulfstream Aerospace', 'USA', 'g_g800', 'G800 Ultra Long Range (2025+)', 'business_jet', 2025, 2026, 'RR Pearl 700 2x 18250lbf ultra-range', 18250, NULL, 'jet_fuel', 'aircraft', 'Global'),
  -- ===== DASSAULT (FR business jet + military) =====
  (gen_random_uuid(), 'dassault_aviation', 'Dassault Aviation', 'France', 'da_falcon_2000lxs', 'Falcon 2000LXS (2013+)', 'business_jet', 2013, 2026, 'P&W Canada PW308C 2x 7000lbf', 7000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'dassault_aviation', 'Dassault Aviation', 'France', 'da_falcon_6x', 'Falcon 6X (2023+)', 'business_jet', 2023, 2026, 'P&W Canada PW812D 2x 13000lbf', 13000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'dassault_aviation', 'Dassault Aviation', 'France', 'da_falcon_8x', 'Falcon 8X (2016+)', 'business_jet', 2016, 2026, 'P&W Canada PW307D 3x 6400lbf', 6400, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'dassault_aviation', 'Dassault Aviation', 'France', 'da_falcon_10x', 'Falcon 10X (2025+)', 'business_jet', 2025, 2026, 'RR Pearl 10X 2x 18000lbf', 18000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'dassault_aviation', 'Dassault Aviation', 'France', 'da_rafale_c', 'Rafale C/B/M Fighter (2001+)', 'fighter_jet', 2001, 2026, 'Snecma M88-2 2x 11250lbf dry / 16900lb afterburner', 16900, NULL, 'jet_fuel', 'aircraft', 'Europe'),
  -- ===== BOMBARDIER (CA business jet) =====
  (gen_random_uuid(), 'bombardier', 'Bombardier', 'Canada', 'bombardier_global_7500', 'Global 7500 (2018+)', 'business_jet', 2018, 2026, 'GE Passport 18000lbf x2', 18000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'bombardier', 'Bombardier', 'Canada', 'bombardier_challenger_3500', 'Challenger 3500 (2022+)', 'business_jet', 2022, 2026, 'Honeywell HTF7350 7485lbf x2', 7485, NULL, 'jet_fuel', 'aircraft', 'Global'),
  -- ===== LOCKHEED MARTIN (US military) =====
  (gen_random_uuid(), 'lockheed_martin', 'Lockheed Martin', 'USA', 'lm_f35a', 'F-35A Lightning II (2015+)', 'fighter_jet', 2015, 2026, 'P&W F135-PW-100 43000lbf afterburner', 43000, NULL, 'jet_fuel', 'aircraft', 'North America'),
  (gen_random_uuid(), 'lockheed_martin', 'Lockheed Martin', 'USA', 'lm_c130j', 'C-130J Super Hercules (2001+)', 'military_transport', 2001, 2026, 'Rolls-Royce AE 2100D3 4756shp x4', 4756, NULL, 'jet_fuel', 'aircraft', 'North America'),
  (gen_random_uuid(), 'lockheed_martin', 'Lockheed Martin', 'USA', 'lm_sr71', 'SR-71 Blackbird (1966–1999)', 'fighter_jet', 1966, 1999, 'P&W J58 34000lbf (Mach 3) x2', 34000, NULL, 'jet_fuel', 'aircraft', 'North America'),
  -- ===== EUROFIGHTER =====
  (gen_random_uuid(), 'eurofighter_consortium', 'Eurofighter', 'EU', 'ef_typhoon', 'Eurofighter Typhoon (2003+)', 'fighter_jet', 2003, 2026, 'Eurojet EJ200 13500lbf dry / 20000lb AB x2', 20000, NULL, 'jet_fuel', 'aircraft', 'Europe'),
  -- ===== CESSNA (US general aviation) =====
  (gen_random_uuid(), 'cessna', 'Cessna', 'USA', 'cessna_172', 'Cessna 172 Skyhawk (1955+)', 'general_aviation', 1972, 2026, 'Lycoming IO-360-L2A 180hp piston', 180, 5920, 'avgas', 'aircraft', 'Global'),
  (gen_random_uuid(), 'cessna', 'Cessna', 'USA', 'cessna_caravan_208', 'Cessna Grand Caravan 208 (1986+)', 'turboprop', 1986, 2026, 'P&W Canada PT6A-140 867shp turboprop', 867, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'cessna', 'Cessna', 'USA', 'cessna_citation_cj4', 'Citation CJ4 Gen2 (2010+)', 'business_jet', 2010, 2026, 'Williams FJ44-4A 3621lbf x2', 3621, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'cessna', 'Cessna', 'USA', 'cessna_citation_longitude', 'Citation Longitude (2019+)', 'business_jet', 2019, 2026, 'Honeywell HTF7700L 7665lbf x2', 7665, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'cessna', 'Cessna', 'USA', 'cessna_ttx', 'Cessna TTx T240 (2013+)', 'general_aviation', 2013, 2026, 'Continental TSIO-550-C 315hp turbo piston', 315, 9012, 'avgas', 'aircraft', 'North America'),
  -- ===== PILATUS (CH) =====
  (gen_random_uuid(), 'pilatus', 'Pilatus Aircraft', 'Switzerland', 'pilatus_pc12', 'PC-12 NGX (2021+)', 'turboprop', 2021, 2026, 'P&W Canada PT6E-67XP 1200shp turboprop', 1200, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'pilatus', 'Pilatus Aircraft', 'Switzerland', 'pilatus_pc24', 'PC-24 Super Versatile Jet (2018+)', 'business_jet', 2018, 2026, 'Williams FJ44-4A 3621lbf x2', 3621, NULL, 'jet_fuel', 'aircraft', 'Global'),
  -- ===== PIPER AIRCRAFT (US GA) =====
  (gen_random_uuid(), 'piper_aircraft', 'Piper Aircraft', 'USA', 'piper_m350', 'Piper M350 (2015+)', 'general_aviation', 2015, 2026, 'Continental IO-550-N 350hp turbo piston', 350, 9012, 'avgas', 'aircraft', 'North America'),
  (gen_random_uuid(), 'piper_aircraft', 'Piper Aircraft', 'USA', 'piper_m600sls', 'Piper M600 SLS (2017+)', 'turboprop', 2017, 2026, 'P&W Canada PT6A-52 600shp turboprop', 600, NULL, 'jet_fuel', 'aircraft', 'North America'),
  (gen_random_uuid(), 'piper_aircraft', 'Piper Aircraft', 'USA', 'piper_archer_tx', 'Piper Archer TX PA-28 (2017+)', 'general_aviation', 2017, 2026, 'Lycoming O-360-A4M 180hp piston', 180, 5917, 'avgas', 'aircraft', 'North America'),
  -- ===== DIAMOND AIRCRAFT (AT) =====
  (gen_random_uuid(), 'diamond_aircraft', 'Diamond Aircraft', 'Austria', 'diamond_da40ng', 'DA40 NG (2013+)', 'general_aviation', 2013, 2026, 'Continental CD-135 diesel 135hp piston', 135, 2200, 'diesel', 'aircraft', 'Europe'),
  (gen_random_uuid(), 'diamond_aircraft', 'Diamond Aircraft', 'Austria', 'diamond_da42ng', 'DA42 NG Twin Star (2009+)', 'general_aviation', 2009, 2026, 'Continental CD-155 2x 155hp diesel twin', 155, 2200, 'diesel', 'aircraft', 'Europe'),
  (gen_random_uuid(), 'diamond_aircraft', 'Diamond Aircraft', 'Austria', 'diamond_da62', 'DA62 (2015+)', 'general_aviation', 2015, 2026, 'Continental CD-135 diesel 2x 180hp', 180, 2200, 'diesel', 'aircraft', 'Europe'),
  -- ===== CIRRUS AIRCRAFT (US) =====
  (gen_random_uuid(), 'cirrus_aircraft', 'Cirrus Aircraft', 'USA', 'cirrus_sr22t', 'SR22T GTS (2013+)', 'general_aviation', 2013, 2026, 'Continental TSIO-550-K 315hp turbo piston', 315, 9012, 'avgas', 'aircraft', 'Global'),
  (gen_random_uuid(), 'cirrus_aircraft', 'Cirrus Aircraft', 'USA', 'cirrus_sf50', 'Vision Jet SF50 (2016+)', 'business_jet', 2016, 2026, 'Williams FJ33-5A 1900lbf single jet', 1900, NULL, 'jet_fuel', 'aircraft', 'Global'),
  -- ===== TECNAM (IT) =====
  (gen_random_uuid(), 'tecnam', 'TECNAM', 'Italy', 'tecnam_p2012', 'P2012 Traveller (2018+)', 'general_aviation', 2018, 2026, 'Lycoming TEO-540-C1A 375hp piston twin', 375, 8855, 'avgas', 'aircraft', 'Europe'),
  -- ===== DAHER-TBM (FR turboprop) =====
  (gen_random_uuid(), 'daher_tbm', 'Daher TBM', 'France', 'daher_tbm960', 'TBM 960 (2022+)', 'turboprop', 2022, 2026, 'P&W Canada PT6E-66XT FADEC 1100shp', 1100, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'daher_tbm', 'Daher TBM', 'France', 'daher_tbm910', 'TBM 910 (2019+)', 'turboprop', 2019, 2022, 'P&W Canada PT6A-66D 850shp turboprop', 850, NULL, 'jet_fuel', 'aircraft', 'Global'),
  -- ===== DASSAULT FALCON (separate bizjet line) =====
  (gen_random_uuid(), 'dassault_falcon', 'Dassault Falcon', 'France', 'df_falcon_2000s', 'Falcon 2000S (2011+)', 'business_jet', 2011, 2026, 'P&W Canada PW308C 7000lbf x2', 7000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  -- ===== ROBINSON HELICOPTER (US piston heli) =====
  (gen_random_uuid(), 'robinson_helicopter', 'Robinson Helicopter', 'USA', 'rh_r22', 'R22 Beta II (1985+)', 'helicopter', 1985, 2026, 'Lycoming O-360-J2A 131hp piston', 131, 5920, 'avgas', 'aircraft', 'Global'),
  (gen_random_uuid(), 'robinson_helicopter', 'Robinson Helicopter', 'USA', 'rh_r44', 'R44 Raven II (2005+)', 'helicopter', 2005, 2026, 'Lycoming IO-540-AE1A5 245hp piston', 245, 8857, 'avgas', 'aircraft', 'Global'),
  (gen_random_uuid(), 'robinson_helicopter', 'Robinson Helicopter', 'USA', 'rh_r66', 'R66 Turbine (2010+)', 'helicopter', 2010, 2026, 'RR RR300 300shp turboshaft', 300, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'robinson_helicopter', 'Robinson Helicopter', 'USA', 'rh_r44_cadet', 'R44 Cadet (2016+)', 'helicopter', 2016, 2026, 'Lycoming O-360-J2A 180hp piston', 180, 5920, 'avgas', 'aircraft', 'Global'),
  -- ===== AIRBUS HELICOPTERS (EU) =====
  (gen_random_uuid(), 'airbus_helicopters', 'Airbus Helicopters', 'EU', 'ah_h125', 'H125 AStar (2012+)', 'helicopter', 2012, 2026, 'Safran Arriel 2D 895shp turboshaft', 895, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'airbus_helicopters', 'Airbus Helicopters', 'EU', 'ah_h145', 'H145 (2014+)', 'helicopter', 2014, 2026, 'Safran Arriel 2E 894shp turboshaft x2', 894, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'airbus_helicopters', 'Airbus Helicopters', 'EU', 'ah_h160', 'H160 (2021+)', 'helicopter', 2021, 2026, 'Safran Arrano 1A 1100shp FADEC x2', 1100, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'airbus_helicopters', 'Airbus Helicopters', 'EU', 'ah_h225m', 'H225M Caracal (military — 2005+)', 'helicopter', 2005, 2026, 'Turbomeca Makila 2A1 2382shp x2', 2382, NULL, 'jet_fuel', 'aircraft', 'Europe'),
  -- ===== BELL HELICOPTER (US) =====
  (gen_random_uuid(), 'bell_helicopter', 'Bell Helicopter', 'USA', 'bell_407', 'Bell 407 GXi (1996+)', 'helicopter', 1996, 2026, 'RR M250-C47E/4 650shp turboshaft', 650, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'bell_helicopter', 'Bell Helicopter', 'USA', 'bell_429', 'Bell 429 GlobalRanger (2009+)', 'helicopter', 2009, 2026, 'P&W Canada PW207D1 800shp x2', 800, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'bell_helicopter', 'Bell Helicopter', 'USA', 'bell_525', 'Bell 525 Relentless (2025+)', 'helicopter', 2025, 2026, 'GE CT7-2F1 2044shp turboshaft x2', 2044, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'bell_helicopter', 'Bell Helicopter', 'USA', 'bell_v280', 'Bell V-280 Valor Tiltrotor (2024+)', 'military_transport', 2024, 2026, 'GE T64 tiltrotor 5000shp concept x2', 5000, NULL, 'jet_fuel', 'aircraft', 'North America'),
  -- ===== LEONARDO HELICOPTERS (IT) =====
  (gen_random_uuid(), 'leonardo_helicopters', 'Leonardo Helicopters', 'Italy', 'leo_aw109sp', 'AW109SP GrandNew (2011+)', 'helicopter', 2011, 2026, 'P&W Canada PW207C 655shp turboshaft x2', 655, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'leonardo_helicopters', 'Leonardo Helicopters', 'Italy', 'leo_aw139', 'AW139 (2004+)', 'helicopter', 2004, 2026, 'P&W Canada PT6C-67C 1531shp turboshaft x2', 1531, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'leonardo_helicopters', 'Leonardo Helicopters', 'Italy', 'leo_aw189', 'AW189 (2014+)', 'helicopter', 2014, 2026, 'GE CT7-2E1 2000shp turboshaft x2', 2000, NULL, 'jet_fuel', 'aircraft', 'Global'),
  (gen_random_uuid(), 'leonardo_helicopters', 'Leonardo Helicopters', 'Italy', 'leo_aw101', 'AW101 Merlin (2000+)', 'helicopter', 2000, 2026, 'CT7-8E 2520shp turboshaft x3', 2520, NULL, 'jet_fuel', 'aircraft', 'Europe'),
  -- ===== DJI (CN drones) =====
  (gen_random_uuid(), 'dji', 'DJI', 'China', 'dji_mavic3', 'Mavic 3 Classic (2021+)', 'drone', 2021, 2026, 'Brushless motor 46min flight electric', 0, NULL, 'electric', 'aircraft', 'Global'),
  (gen_random_uuid(), 'dji', 'DJI', 'China', 'dji_phantom4_rtk', 'Phantom 4 RTK (2018+)', 'drone', 2018, 2026, 'Brushless electric quadcopter 30min', 0, NULL, 'electric', 'aircraft', 'Global'),
  (gen_random_uuid(), 'dji', 'DJI', 'China', 'dji_matrice300', 'Matrice 300 RTK Enterprise (2020+)', 'drone', 2020, 2026, 'Brushless x8 electric 55min flight', 0, NULL, 'electric', 'aircraft', 'Global'),
  (gen_random_uuid(), 'dji', 'DJI', 'China', 'dji_agras_t40', 'Agras T40 Agricultural Drone (2022+)', 'drone', 2022, 2026, 'Electric octocopter 40kg payload', 0, NULL, 'electric', 'aircraft', 'Global'),
  -- ===== AUTEL ROBOTICS (CN) =====
  (gen_random_uuid(), 'autel_robotics', 'Autel Robotics', 'China', 'autel_evo2', 'EVO II Pro V3 (2022+)', 'drone', 2022, 2026, 'Brushless electric quadcopter 42min', 0, NULL, 'electric', 'aircraft', 'Global'),
  -- ===== PIPISTREL (SI electric/ultralight) =====
  (gen_random_uuid(), 'pipistrel', 'Pipistrel', 'Slovenia', 'pipistrel_velis', 'Velis Electro (2020+) — primo LSA elettrico certificato', 'ultralight', 2020, 2026, 'E-811 57.6kW electric certified EASA', 57, NULL, 'electric', 'aircraft', 'Europe'),
  (gen_random_uuid(), 'pipistrel', 'Pipistrel', 'Slovenia', 'pipistrel_alpha_trainer', 'Alpha Trainer (2012+)', 'ultralight', 2012, 2026, 'Rotax 912 ULS 100hp piston', 100, 1352, 'avgas', 'aircraft', 'Europe'),
  (gen_random_uuid(), 'pipistrel', 'Pipistrel', 'Slovenia', 'pipistrel_panthera', 'Panthera (2015+)', 'general_aviation', 2015, 2026, 'Lycoming IO-390-C3B6 215hp piston', 215, 6390, 'avgas', 'aircraft', 'Europe'),
  -- ===== JOBY / ARCHER / LILIUM (eVTOL) =====
  (gen_random_uuid(), 'joby_aviation', 'Joby Aviation', 'USA', 'joby_s4', 'Joby S4 eVTOL Air Taxi (2025+)', 'evtol', 2025, 2026, '6x electric tilt-rotor 200mph range 100mi', 0, NULL, 'electric', 'aircraft', 'North America'),
  (gen_random_uuid(), 'archer_aviation', 'Archer Aviation', 'USA', 'archer_midnight', 'Midnight eVTOL Air Taxi (2025+)', 'evtol', 2025, 2026, '12x electric rotor 60mi range urban UAM', 0, NULL, 'electric', 'aircraft', 'North America'),
  (gen_random_uuid(), 'lilium_jet', 'Lilium Jet', 'Germany', 'lilium_pioneer', 'Lilium Pioneer Jet eVTOL (2025+)', 'evtol', 2025, 2026, '36x electric jet fans 186mph 186mi range', 0, NULL, 'electric', 'aircraft', 'Europe'),
  -- ===== ANTONOV (UA cargo) =====
  (gen_random_uuid(), 'antonov', 'Antonov', 'Ukraine', 'an_124_ruslan', 'An-124-100 Ruslan (1982+)', 'cargo', 1982, 2026, 'D-18T turbofan 51650lbf x4', 51650, NULL, 'jet_fuel', 'aircraft', 'Europe'),
  (gen_random_uuid(), 'antonov', 'Antonov', 'Ukraine', 'an_225_mriya', 'An-225 Mriya (1988)', 'cargo', 1988, 2022, 'D-18T turbofan 51650lbf x6', 51650, NULL, 'jet_fuel', 'aircraft', 'Global'),
  -- ===== SLING + JABIRU (ultralight) =====
  (gen_random_uuid(), 'sling_aircraft', 'Sling Aircraft', 'South Africa', 'sling_tsi', 'Sling TSi (2020+)', 'ultralight', 2020, 2026, 'Rotax 915 iS 141hp turbo piston', 141, 1352, 'avgas', 'aircraft', 'Global'),
  (gen_random_uuid(), 'jabiru', 'Jabiru', 'Australia', 'jabiru_j170', 'Jabiru J170 (2005+)', 'ultralight', 2005, 2026, 'Jabiru 2200A 85hp piston 4-cylinder', 85, 2200, 'avgas', 'aircraft', 'Global'),
  -- ===== ROBIN AIRCRAFT (FR) =====
  (gen_random_uuid(), 'robin_aircraft', 'Robin Aircraft', 'France', 'robin_dr401', 'DR401 Acrobin (2006+)', 'general_aviation', 2006, 2026, 'Lycoming O-360-A3A 180hp piston', 180, 5920, 'avgas', 'aircraft', 'Europe'),
  (gen_random_uuid(), 'robin_aircraft', 'Robin Aircraft', 'France', 'robin_dr400', 'DR400 Chevalier (1972+)', 'general_aviation', 1972, 2026, 'Lycoming O-320-D2A 160hp trainer', 160, 5244, 'avgas', 'aircraft', 'Europe'),
  -- ===== GROB + EXTRA + STEMME (DE gliders/aerobatic) =====
  (gen_random_uuid(), 'grob_aircraft', 'Grob Aircraft', 'Germany', 'grob_g120tp', 'Grob G120TP-A Trainer (2011+)', 'turboprop', 2011, 2026, 'P&W Canada PT6A-25A 500shp trainer', 500, NULL, 'jet_fuel', 'aircraft', 'Europe'),
  (gen_random_uuid(), 'extra_aircraft', 'Extra Aircraft', 'Germany', 'extra_ea330lx', 'Extra EA-330LX Aerobatic (2012+)', 'general_aviation', 2012, 2026, 'Lycoming AEIO-580-B1A 315hp aerobatic', 315, 9499, 'avgas', 'aircraft', 'Europe'),
  (gen_random_uuid(), 'stemme', 'Stemme', 'Germany', 'stemme_s10vt', 'Stemme S10-VT Motor Glider (1994+)', 'glider', 1994, 2026, 'Rotax 914 115hp turbo pushing propeller', 115, 1352, 'avgas', 'aircraft', 'Europe')
ON CONFLICT DO NOTHING;

-- Fine: 92 motorizzazioni — batch 11 AEROMOBILI
-- Totale atteso: 13,165 + 92 = 13,257

-- update_mtow_aircraft.sql
-- Popola mtow_kg per tutti i modelli airplane/aircraft/drone
-- Fonte: dati certificati FAA/EASA/ICAO Doc 8643 (pubblici)
-- ESEGUIRE DOPO migration_emission_fields.sql
-- Unità: kg (INTEGER). Sub-1kg drone → NULL.

-- ============================================================
-- BOEING (airliners + defense)
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 54885  WHERE model_id = 'b_717';
UPDATE vehicle_specs SET mtow_kg = 79016  WHERE model_id = 'b_737_800';
UPDATE vehicle_specs SET mtow_kg = 82191  WHERE model_id = 'b_737_max8';
UPDATE vehicle_specs SET mtow_kg = 89765  WHERE model_id = 'b_737_max10';
UPDATE vehicle_specs SET mtow_kg = 447696 WHERE model_id = 'b_747_8i';
UPDATE vehicle_specs SET mtow_kg = 115680 WHERE model_id = 'b_757_200';
UPDATE vehicle_specs SET mtow_kg = 186880 WHERE model_id = 'b_767_300er';
UPDATE vehicle_specs SET mtow_kg = 352400 WHERE model_id = 'b_777_300er';
UPDATE vehicle_specs SET mtow_kg = 352400 WHERE model_id = 'b_777x';
UPDATE vehicle_specs SET mtow_kg = 254011 WHERE model_id = 'b_787_9';
UPDATE vehicle_specs SET mtow_kg = 254011 WHERE model_id = 'b_787_10';
-- duplicati batch diversi
UPDATE vehicle_specs SET mtow_kg = 89765  WHERE model_id = 'boeing_737_max10';
UPDATE vehicle_specs SET mtow_kg = 80285  WHERE model_id = 'boeing_737_max7';
UPDATE vehicle_specs SET mtow_kg = 352400 WHERE model_id = 'boeing_777x';
UPDATE vehicle_specs SET mtow_kg = 254011 WHERE model_id = 'boeing_787_10_dreamliner';
-- NMA 797 Concept → NULL (non certificato)

-- Boeing Defense
UPDATE vehicle_specs SET mtow_kg = 152635 WHERE model_id = 'bd_b2';
UPDATE vehicle_specs SET mtow_kg = 22680  WHERE model_id = 'bd_ch47';
UPDATE vehicle_specs SET mtow_kg = 29937  WHERE model_id = 'bd_fa18ef';

-- ============================================================
-- AIRBUS (airliners)
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 65985  WHERE model_id = 'ab_a220_100';
UPDATE vehicle_specs SET mtow_kg = 70900  WHERE model_id = 'ab_a220_300';
UPDATE vehicle_specs SET mtow_kg = 75500  WHERE model_id = 'ab_a319neo';
UPDATE vehicle_specs SET mtow_kg = 79000  WHERE model_id = 'ab_a320neo';
UPDATE vehicle_specs SET mtow_kg = 97000  WHERE model_id = 'ab_a321neo';
UPDATE vehicle_specs SET mtow_kg = 251000 WHERE model_id = 'ab_a330_900neo';
UPDATE vehicle_specs SET mtow_kg = 280000 WHERE model_id = 'ab_a350_900';
UPDATE vehicle_specs SET mtow_kg = 316000 WHERE model_id = 'ab_a350_1000';
UPDATE vehicle_specs SET mtow_kg = 575000 WHERE model_id = 'ab_a380_800';
-- duplicati batch diversi
UPDATE vehicle_specs SET mtow_kg = 65985  WHERE model_id = 'airbus_a220_100';
UPDATE vehicle_specs SET mtow_kg = 70900  WHERE model_id = 'airbus_a220_300';
UPDATE vehicle_specs SET mtow_kg = 101000 WHERE model_id = 'airbus_a321xlr';
UPDATE vehicle_specs SET mtow_kg = 316000 WHERE model_id = 'airbus_a350_1000';
UPDATE vehicle_specs SET mtow_kg = 575000 WHERE model_id = 'airbus_a380_800f';

-- ============================================================
-- EMBRAER
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 38790  WHERE model_id = 'emb_e175';
UPDATE vehicle_specs SET mtow_kg = 55800  WHERE model_id = 'emb_e190_e2';
UPDATE vehicle_specs SET mtow_kg = 73800  WHERE model_id = 'emb_e195_e2';
UPDATE vehicle_specs SET mtow_kg = 16783  WHERE model_id = 'emb_praetor_600';
UPDATE vehicle_specs SET mtow_kg = 44800  WHERE model_id = 'embraer_e175_e2';
UPDATE vehicle_specs SET mtow_kg = 73800  WHERE model_id = 'embraer_e195_e2';
UPDATE vehicle_specs SET mtow_kg = 8150   WHERE model_id = 'embraer_phenom_300e';
UPDATE vehicle_specs SET mtow_kg = 16783  WHERE model_id = 'embraer_praetor_600';

-- ============================================================
-- GULFSTREAM
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 16101  WHERE model_id = 'g_g280';
UPDATE vehicle_specs SET mtow_kg = 39780  WHERE model_id = 'g_g500';
UPDATE vehicle_specs SET mtow_kg = 43091  WHERE model_id = 'g_g600';
UPDATE vehicle_specs SET mtow_kg = 45178  WHERE model_id = 'g_g650er';
UPDATE vehicle_specs SET mtow_kg = 48081  WHERE model_id = 'g_g700';
UPDATE vehicle_specs SET mtow_kg = 48081  WHERE model_id = 'g_g800';
-- duplicati batch diversi
UPDATE vehicle_specs SET mtow_kg = 33838  WHERE model_id = 'gulfstream_g400';
UPDATE vehicle_specs SET mtow_kg = 39780  WHERE model_id = 'gulfstream_g500';
UPDATE vehicle_specs SET mtow_kg = 43091  WHERE model_id = 'gulfstream_g600';
UPDATE vehicle_specs SET mtow_kg = 48081  WHERE model_id = 'gulfstream_g700';
UPDATE vehicle_specs SET mtow_kg = 48081  WHERE model_id = 'gulfstream_g800';

-- ============================================================
-- DASSAULT AVIATION
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 19200  WHERE model_id = 'da_falcon_2000lxs';
UPDATE vehicle_specs SET mtow_kg = 33700  WHERE model_id = 'da_falcon_6x';
UPDATE vehicle_specs SET mtow_kg = 32975  WHERE model_id = 'da_falcon_8x';
UPDATE vehicle_specs SET mtow_kg = 43000  WHERE model_id = 'da_falcon_10x';
UPDATE vehicle_specs SET mtow_kg = 24500  WHERE model_id = 'da_rafale_c';
UPDATE vehicle_specs SET mtow_kg = 43000  WHERE model_id = 'dassault_falcon10x';
UPDATE vehicle_specs SET mtow_kg = 33700  WHERE model_id = 'dassault_falcon6x';
UPDATE vehicle_specs SET mtow_kg = 17000  WHERE model_id = 'dassault_mirage2000d';
-- nEUROn UCAV → NULL (dimostratore, non certificato)
UPDATE vehicle_specs SET mtow_kg = 24500  WHERE model_id = 'dassault_rafale_f4';
-- Dassault Falcon brand separato
UPDATE vehicle_specs SET mtow_kg = 19200  WHERE model_id = 'dassault_falcon_falcon_2000';
UPDATE vehicle_specs SET mtow_kg = 32975  WHERE model_id = 'dassault_falcon_falcon_7x_8x';

-- ============================================================
-- BOMBARDIER
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 17213  WHERE model_id = 'bomb_challenger_350';
UPDATE vehicle_specs SET mtow_kg = 18461  WHERE model_id = 'bomb_challenger_3500';
UPDATE vehicle_specs SET mtow_kg = 42800  WHERE model_id = 'bomb_global_5500';
UPDATE vehicle_specs SET mtow_kg = 53521  WHERE model_id = 'bomb_global_7500';

-- ============================================================
-- CESSNA
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 1111   WHERE model_id = 'ces_172s';
UPDATE vehicle_specs SET mtow_kg = 1406   WHERE model_id = 'ces_182t';
UPDATE vehicle_specs SET mtow_kg = 7760   WHERE model_id = 'ces_citation_cj4';
UPDATE vehicle_specs SET mtow_kg = 17009  WHERE model_id = 'ces_citation_longitude';
UPDATE vehicle_specs SET mtow_kg = 5805   WHERE model_id = 'ces_citation_m2';
UPDATE vehicle_specs SET mtow_kg = 9163   WHERE model_id = 'ces_citation_xls';
-- duplicati batch diversi
UPDATE vehicle_specs SET mtow_kg = 7760   WHERE model_id = 'cessna_citation_cj4_gen2';
UPDATE vehicle_specs SET mtow_kg = 17009  WHERE model_id = 'cessna_citation_longitude';
UPDATE vehicle_specs SET mtow_kg = 8618   WHERE model_id = 'cessna_skycourier';
UPDATE vehicle_specs SET mtow_kg = 1111   WHERE model_id = 'cessna_skyhawk_g1000';
UPDATE vehicle_specs SET mtow_kg = 1111   WHERE model_id = 'cessna_skyhawk_sp';
UPDATE vehicle_specs SET mtow_kg = 1542   WHERE model_id = 'cessna_ttx';
UPDATE vehicle_specs SET mtow_kg = 1633   WHERE model_id = 'cessna_turbo_stationair_hd';

-- ============================================================
-- PILATUS
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 4740   WHERE model_id = 'pil_pc12';
UPDATE vehicle_specs SET mtow_kg = 3100   WHERE model_id = 'pil_pc21';
UPDATE vehicle_specs SET mtow_kg = 8300   WHERE model_id = 'pil_pc24';

-- ============================================================
-- LOCKHEED MARTIN
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 19187  WHERE model_id = 'lm_f16_block70';
UPDATE vehicle_specs SET mtow_kg = 31751  WHERE model_id = 'lm_f35a';
UPDATE vehicle_specs SET mtow_kg = 27215  WHERE model_id = 'lm_f35b';
UPDATE vehicle_specs SET mtow_kg = 77111  WHERE model_id = 'lm_sr71';
-- duplicati batch diversi
UPDATE vehicle_specs SET mtow_kg = 31751  WHERE model_id = 'lockheed_f35a';
UPDATE vehicle_specs SET mtow_kg = 27215  WHERE model_id = 'lockheed_f35b';
UPDATE vehicle_specs SET mtow_kg = 31751  WHERE model_id = 'lockheed_f35c';
-- SR-72 Darkstar → NULL (concept/dimostratore)

-- ============================================================
-- EUROFIGHTER
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 23500  WHERE model_id = 'eft_typhoon';

-- ============================================================
-- ROBINSON HELICOPTER
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 621    WHERE model_id = 'rob_r22_beta';
UPDATE vehicle_specs SET mtow_kg = 1134   WHERE model_id = 'rob_r44_raven';
UPDATE vehicle_specs SET mtow_kg = 1225   WHERE model_id = 'rob_r66_turbine';
-- duplicati
UPDATE vehicle_specs SET mtow_kg = 621    WHERE model_id = 'robinson_r22_beta2';
UPDATE vehicle_specs SET mtow_kg = 1134   WHERE model_id = 'robinson_r44_raven2';
UPDATE vehicle_specs SET mtow_kg = 1225   WHERE model_id = 'robinson_r66_turbine';

-- ============================================================
-- AIRBUS HELICOPTERS
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 2980   WHERE model_id = 'ah_ec135';
UPDATE vehicle_specs SET mtow_kg = 2250   WHERE model_id = 'ah_h125';
UPDATE vehicle_specs SET mtow_kg = 3800   WHERE model_id = 'ah_h145';
UPDATE vehicle_specs SET mtow_kg = 6050   WHERE model_id = 'ah_h160';
UPDATE vehicle_specs SET mtow_kg = 11200  WHERE model_id = 'ah_h225m';

-- ============================================================
-- BELL HELICOPTER
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 2268   WHERE model_id = 'bell_407gxi';
UPDATE vehicle_specs SET mtow_kg = 3175   WHERE model_id = 'bell_429';
UPDATE vehicle_specs SET mtow_kg = 1565   WHERE model_id = 'bell_505';
UPDATE vehicle_specs SET mtow_kg = 8618   WHERE model_id = 'bell_525_relentless';
UPDATE vehicle_specs SET mtow_kg = 1451   WHERE model_id = 'bell_helicopter_bell_206_jetranger';
UPDATE vehicle_specs SET mtow_kg = 2381   WHERE model_id = 'bell_helicopter_bell_407';

-- ============================================================
-- LEONARDO HELICOPTERS
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 3175   WHERE model_id = 'leonardo_helicopters_aw109';
UPDATE vehicle_specs SET mtow_kg = 7000   WHERE model_id = 'leonardo_helicopters_aw139';
UPDATE vehicle_specs SET mtow_kg = 7000   WHERE model_id = 'leonardo_aw139';
UPDATE vehicle_specs SET mtow_kg = 4600   WHERE model_id = 'leonardo_aw169';
UPDATE vehicle_specs SET mtow_kg = 8600   WHERE model_id = 'leonardo_aw189';
UPDATE vehicle_specs SET mtow_kg = 8170   WHERE model_id = 'leonardo_aw609';

-- ============================================================
-- DIAMOND AIRCRAFT
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 1310   WHERE model_id = 'dia_da40_ng';
UPDATE vehicle_specs SET mtow_kg = 1900   WHERE model_id = 'dia_da42_vi';
UPDATE vehicle_specs SET mtow_kg = 2300   WHERE model_id = 'dia_da62';
-- duplicati
UPDATE vehicle_specs SET mtow_kg = 1310   WHERE model_id = 'diamond_da40_ng';
UPDATE vehicle_specs SET mtow_kg = 1805   WHERE model_id = 'diamond_da50_rg';
UPDATE vehicle_specs SET mtow_kg = 1805   WHERE model_id = 'diamond_da50_ryc';
UPDATE vehicle_specs SET mtow_kg = 2300   WHERE model_id = 'diamond_da62_twin';
-- DART 550 → NULL (certificazione in corso)
UPDATE vehicle_specs SET mtow_kg = 850    WHERE model_id = 'diamond_hk36_motorglider';

-- ============================================================
-- PIPER AIRCRAFT
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 1157   WHERE model_id = 'pip_pa28_archer';
UPDATE vehicle_specs SET mtow_kg = 2449   WHERE model_id = 'pip_pa42_cheyenne';
UPDATE vehicle_specs SET mtow_kg = 2994   WHERE model_id = 'pip_pa46_m600';
-- duplicati
UPDATE vehicle_specs SET mtow_kg = 1157   WHERE model_id = 'piper_archer_dx';
UPDATE vehicle_specs SET mtow_kg = 2994   WHERE model_id = 'piper_m600_sls';
UPDATE vehicle_specs SET mtow_kg = 2404   WHERE model_id = 'piper_meridian_m500';
UPDATE vehicle_specs SET mtow_kg = 2155   WHERE model_id = 'piper_seneca_vi';

-- ============================================================
-- CIRRUS AIRCRAFT
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 1270   WHERE model_id = 'cirrus_aircraft_sr20';
UPDATE vehicle_specs SET mtow_kg = 1655   WHERE model_id = 'cirrus_aircraft_sr22_sr22t';
UPDATE vehicle_specs SET mtow_kg = 3126   WHERE model_id = 'cirrus_aircraft_sf50_vision_jet';
-- duplicati
UPDATE vehicle_specs SET mtow_kg = 1270   WHERE model_id = 'cirrus_sr20_g6';
UPDATE vehicle_specs SET mtow_kg = 1655   WHERE model_id = 'cirrus_sr22t_gts';
UPDATE vehicle_specs SET mtow_kg = 3126   WHERE model_id = 'cirrus_vision_jet_g2';

-- ============================================================
-- BEECHCRAFT
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 1519   WHERE model_id = 'beechcraft_bonanza';
UPDATE vehicle_specs SET mtow_kg = 6804   WHERE model_id = 'beechcraft_king_air';

-- ============================================================
-- MOONEY
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 1315   WHERE model_id = 'mooney_m20';

-- ============================================================
-- DAHER TBM
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 3354   WHERE model_id = 'daher_tbm_tbm_700_850';
UPDATE vehicle_specs SET mtow_kg = 3354   WHERE model_id = 'daher_tbm_tbm_900_960';

-- ============================================================
-- SOCATA
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 1300   WHERE model_id = 'socata_tb_series_caribbean_';

-- ============================================================
-- JABIRU
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 600    WHERE model_id = 'jabiru_j_series';

-- ============================================================
-- GROB AIRCRAFT
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 900    WHERE model_id = 'grob_aircraft_g_115';
UPDATE vehicle_specs SET mtow_kg = 1900   WHERE model_id = 'grob_aircraft_g_120';

-- ============================================================
-- EXTRA AIRCRAFT
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 950    WHERE model_id = 'extra_aircraft_ea_300_330';

-- ============================================================
-- SLING AIRCRAFT
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 800    WHERE model_id = 'sling_aircraft_sling_2_sling_4';

-- ============================================================
-- TECNAM
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 600    WHERE model_id = 'tec_p2008jc';
UPDATE vehicle_specs SET mtow_kg = 3100   WHERE model_id = 'tec_p2012_traveller';
-- P-One (full electric trainer) → NULL (certificazione in corso)

-- ============================================================
-- PIPISTREL
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 560    WHERE model_id = 'pipistrel_alpha_trainer';
UPDATE vehicle_specs SET mtow_kg = 900    WHERE model_id = 'pipistrel_panthera';
UPDATE vehicle_specs SET mtow_kg = 600    WHERE model_id = 'pipistrel_velis_electro';
UPDATE vehicle_specs SET mtow_kg = 473    WHERE model_id = 'pipistrel_virus_sw121';

-- ============================================================
-- ROBIN AIRCRAFT
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 900    WHERE model_id = 'robin_dr400_140b';
UPDATE vehicle_specs SET mtow_kg = 820    WHERE model_id = 'robin_dr401_120';
UPDATE vehicle_specs SET mtow_kg = 1010   WHERE model_id = 'robin_dr401_160';

-- ============================================================
-- EVEKTOR
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 600    WHERE model_id = 'evektor_sportstar';

-- ============================================================
-- STEMME
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 850    WHERE model_id = 'stemme_s10';

-- ============================================================
-- ZLIN AIRCRAFT
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 1090   WHERE model_id = 'zlin_aircraft_zlin_z_242';

-- ============================================================
-- LET AIRCRAFT
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 6600   WHERE model_id = 'let_aircraft_l_410_turbolet';

-- ============================================================
-- ANTONOV
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 405000 WHERE model_id = 'antonov_an_124_ruslan';
UPDATE vehicle_specs SET mtow_kg = 5500   WHERE model_id = 'antonov_an_2';
UPDATE vehicle_specs SET mtow_kg = 21000  WHERE model_id = 'antonov_an_24';
UPDATE vehicle_specs SET mtow_kg = 24000  WHERE model_id = 'antonov_an_26';

-- ============================================================
-- SUKHOI CIVIL
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 49450  WHERE model_id = 'sukhoi_civil_aircraft_sukhoi_superjet_100';

-- ============================================================
-- TUPOLEV
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 47600  WHERE model_id = 'tupolev_tu_134';
UPDATE vehicle_specs SET mtow_kg = 100000 WHERE model_id = 'tupolev_tu_154';

-- ============================================================
-- YAKOVLEV
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 17200  WHERE model_id = 'yakovlev_yak_40';
UPDATE vehicle_specs SET mtow_kg = 57500  WHERE model_id = 'yakovlev_yak_42';

-- ============================================================
-- eVTOL (certificazioni FAA/EASA in corso)
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 2177   WHERE model_id = 'joby_s4_evtol';
UPDATE vehicle_specs SET mtow_kg = 3175   WHERE model_id = 'archer_midnight_evtol';
UPDATE vehicle_specs SET mtow_kg = 3175   WHERE model_id = 'lilium_pioneer';

-- ============================================================
-- DJI DRONI
-- Nota: sub-1kg → NULL | valori in kg interi
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 50     WHERE model_id = 'dji_agras_t50';       -- 49.5 kg carico max
UPDATE vehicle_specs SET mtow_kg = 1      WHERE model_id = 'dji_air3s';           -- 713g
UPDATE vehicle_specs SET mtow_kg = 1      WHERE model_id = 'dji_fpv';             -- 795g (FPV/Avata 2)
UPDATE vehicle_specs SET mtow_kg = 6      WHERE model_id = 'dji_matrice_350';     -- 6.47 kg
UPDATE vehicle_specs SET mtow_kg = 1      WHERE model_id = 'dji_mavic3';          -- 895g
-- dji_mini4pro: 249g → NULL (sotto soglia registrazione EASA/FAA)
UPDATE vehicle_specs SET mtow_kg = 1      WHERE model_id = 'dji_phantom4pro';     -- 1.388 kg

-- ============================================================
-- AUTEL ROBOTICS
-- ============================================================
UPDATE vehicle_specs SET mtow_kg = 1      WHERE model_id = 'aut_evo_lite';        -- 849g
UPDATE vehicle_specs SET mtow_kg = 2      WHERE model_id = 'aut_evo_max4t';       -- 1.58 kg
-- aut_evo_nano: 249g → NULL

-- ============================================================
-- VERIFICA
-- ============================================================
-- SELECT model_id, model_name, mtow_kg
-- FROM vehicle_specs
-- WHERE vehicle_type IN ('airplane','aircraft')
-- AND mtow_kg IS NOT NULL
-- ORDER BY mtow_kg DESC
-- LIMIT 30;

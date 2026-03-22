-- Batch 17 — NUOVI 2024-2026: modelli freschi non nei JSON originali
-- Brand nuovi: Deepal, AITO, Avatr, Yangwang, Onvo, Scout Motors, Lucid Gravity, Volvo EX series
-- Modelli nuovi: BMW i5/M5new, Mercedes W214, Audi Q6 e-tron, VW Tiguan2024,
--                Toyota C-HR2024, Honda ZR-V/eNy1, Ford Capri EV, Hyundai Ioniq9,
--                Kia EV3/EV9GT, Peugeot E-3008/E-5008, Renault Rafale, Alfa Junior,
--                Fiat Grande Panda, Lancia Ypsilon EV, Skoda Elroq, Dacia Bigster
INSERT INTO vehicle_specs
  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)
VALUES
  -- ===== BMW — nuovi 2024 =====
  (gen_random_uuid(), 'bmw', 'BMW', 'Germany', 'bmw_i5_m60', 'i5 M60 xDrive (G60 — 2024+)', 'sedan', 2024, 2026, 'Dual motor EV 601cv 81kWh', 601, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'bmw', 'BMW', 'Germany', 'bmw_i5_m60', 'i5 M60 xDrive (G60 — 2024+)', 'sedan', 2024, 2026, 'Dual motor EV 340cv 81kWh sDrive40', 340, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'bmw', 'BMW', 'Germany', 'bmw_m5_g90', 'M5 / M5 Touring (G90 — 2024+)', 'sedan', 2024, 2026, 'S68 4.4 V8 PHEV 727cv M xDrive', 727, 4395, 'hybrid', 'car', 'Global'),
  (gen_random_uuid(), 'bmw', 'BMW', 'Germany', 'bmw_m5_g90', 'M5 / M5 Touring (G90 — 2024+)', 'touring', 2024, 2026, 'S68 4.4 V8 PHEV 727cv Touring xDrive', 727, 4395, 'hybrid', 'car', 'Global'),
  (gen_random_uuid(), 'bmw', 'BMW', 'Germany', 'bmw_x2_u10', 'X2 / iX2 (U10 — 2024+)', 'suv', 2024, 2026, 'B48 2.0T 218cv sDrive20i', 218, 1998, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'bmw', 'BMW', 'Germany', 'bmw_x2_u10', 'X2 / iX2 (U10 — 2024+)', 'suv', 2024, 2026, 'Electric 313cv iX2 xDrive30 74.4kWh', 313, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'bmw', 'BMW', 'Germany', 'bmw_x2_u10', 'X2 / iX2 (U10 — 2024+)', 'suv', 2024, 2026, 'Electric 204cv iX2 eDrive20 66.5kWh', 204, NULL, 'electric', 'car', 'Europe'),

  -- ===== MERCEDES-BENZ W214 — nuova E-Class 2024 =====
  (gen_random_uuid(), 'mercedes', 'Mercedes-Benz', 'Germany', 'mercedes_w214', 'E-Class W214 (2024+)', 'sedan', 2024, 2026, 'OM654 2.0d 197cv E220d', 197, 1993, 'diesel', 'car', 'Global'),
  (gen_random_uuid(), 'mercedes', 'Mercedes-Benz', 'Germany', 'mercedes_w214', 'E-Class W214 (2024+)', 'sedan', 2024, 2026, 'M254 2.0T PHEV 313cv E300e', 313, 1999, 'hybrid', 'car', 'Global'),
  (gen_random_uuid(), 'mercedes', 'Mercedes-Benz', 'Germany', 'mercedes_w214', 'E-Class W214 (2024+)', 'sedan', 2024, 2026, 'M256 3.0T MHEV 381cv E450 4MATIC', 381, 2999, 'gasoline', 'car', 'Global'),
  (gen_random_uuid(), 'mercedes', 'Mercedes-Benz', 'Germany', 'mercedes_w214', 'E-Class W214 (2024+)', 'sedan', 2024, 2026, 'M256 3.0T AMG E53 PHEV 585cv', 585, 2999, 'hybrid', 'car', 'Global'),
  (gen_random_uuid(), 'mercedes', 'Mercedes-Benz', 'Germany', 'mercedes_cle_c236', 'CLE Coupé/Cabriolet (C236 — 2024+)', 'coupe', 2024, 2026, 'M254 2.0T 258cv CLE220d', 197, 1993, 'diesel', 'car', 'Global'),
  (gen_random_uuid(), 'mercedes', 'Mercedes-Benz', 'Germany', 'mercedes_cle_c236', 'CLE Coupé/Cabriolet (C236 — 2024+)', 'coupe', 2024, 2026, 'M256 3.0T AMG CLE53 449cv', 449, 2999, 'gasoline', 'car', 'Global'),

  -- ===== AUDI — nuovi 2024 =====
  (gen_random_uuid(), 'audi', 'Audi', 'Germany', 'audi_q6_etron', 'Q6 e-tron (2024+)', 'suv', 2024, 2026, 'Single motor RWD 252cv 83kWh', 252, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'audi', 'Audi', 'Germany', 'audi_q6_etron', 'Q6 e-tron (2024+)', 'suv', 2024, 2026, 'Dual motor quattro 387cv 100kWh SQ6', 387, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'audi', 'Audi', 'Germany', 'audi_a6_etron', 'A6 e-tron (2024+)', 'sedan', 2024, 2026, 'Single motor RWD 270cv 83kWh A6 e-tron', 270, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'audi', 'Audi', 'Germany', 'audi_a6_etron', 'A6 e-tron (2024+)', 'sedan', 2024, 2026, 'Dual motor quattro 551cv 100kWh RS6 e-tron Performance', 551, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'audi', 'Audi', 'Germany', 'audi_a3_8y_facelift', 'A3 / S3 Sportback Facelift (8Y — 2024+)', 'hatchback', 2024, 2026, 'EA888 2.0T 150cv 30 TFSI facelift', 150, 1984, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'audi', 'Audi', 'Germany', 'audi_a3_8y_facelift', 'A3 / S3 Sportback Facelift (8Y — 2024+)', 'hatchback', 2024, 2026, 'EA888 2.0T 333cv S3 facelift', 333, 1984, 'gasoline', 'car', 'Europe'),

  -- ===== VW — nuovi 2024 =====
  (gen_random_uuid(), 'vw', 'Volkswagen', 'Germany', 'vw_tiguan_mk3', 'Tiguan Mk3 (2024+)', 'suv', 2024, 2026, 'EA211 1.5 eTSI 150cv mild hybrid', 150, 1498, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'vw', 'Volkswagen', 'Germany', 'vw_tiguan_mk3', 'Tiguan Mk3 (2024+)', 'suv', 2024, 2026, 'EA288 2.0 TDI 150cv DSG', 150, 1968, 'diesel', 'car', 'Europe'),
  (gen_random_uuid(), 'vw', 'Volkswagen', 'Germany', 'vw_tiguan_mk3', 'Tiguan Mk3 (2024+)', 'suv', 2024, 2026, 'TFSI 1.5 PHEV 272cv eHybrid', 272, 1498, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'vw', 'Volkswagen', 'Germany', 'vw_passat_b9', 'Passat / Alltrack B9 (2024+)', 'wagon', 2024, 2026, 'EA211 2.0 TDI 150cv Variant DSG', 150, 1968, 'diesel', 'car', 'Europe'),
  (gen_random_uuid(), 'vw', 'Volkswagen', 'Germany', 'vw_passat_b9', 'Passat / Alltrack B9 (2024+)', 'wagon', 2024, 2026, 'EA888 2.0 TSI 265cv R-Line', 265, 1984, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'vw', 'Volkswagen', 'Germany', 'vw_id7_gtx', 'ID.7 / ID.7 GTX (2024+)', 'sedan', 2024, 2026, 'Single motor RWD 286cv 77kWh ID.7 Pro', 286, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'vw', 'Volkswagen', 'Germany', 'vw_id7_gtx', 'ID.7 / ID.7 GTX (2024+)', 'sedan', 2024, 2026, 'Dual motor AWD 340cv 86kWh ID.7 GTX', 340, NULL, 'electric', 'car', 'Global'),

  -- ===== TOYOTA — nuovi 2024 =====
  (gen_random_uuid(), 'toyota', 'Toyota', 'Japan', 'toyota_chr_2024', 'C-HR 2024 (2nd gen Hybrid/PHEV)', 'suv', 2024, 2026, '2ZR-FXE 1.8 Hybrid 140cv FWD', 140, 1798, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'toyota', 'Toyota', 'Japan', 'toyota_chr_2024', 'C-HR 2024 (2nd gen Hybrid/PHEV)', 'suv', 2024, 2026, 'M20A-FXS 2.0 PHEV 223cv AWD', 223, 1987, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'toyota', 'Toyota', 'Japan', 'toyota_chr_2024', 'C-HR 2024 (2nd gen Hybrid/PHEV)', 'suv', 2024, 2026, 'M20A-FXS 2.0 Hybrid 197cv GR Sport', 197, 1987, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'toyota', 'Toyota', 'Japan', 'toyota_prius_2024', 'Prius 2024 (XW60 PHEV)', 'sedan', 2024, 2026, 'M20A-FXS 2.0 PHEV 225cv AWD', 225, 1987, 'hybrid', 'car', 'Global'),
  (gen_random_uuid(), 'toyota', 'Toyota', 'Japan', 'toyota_prius_2024', 'Prius 2024 (XW60 PHEV)', 'sedan', 2024, 2026, 'M20A-FXS 2.0 Hybrid 196cv MHD', 196, 1987, 'hybrid', 'car', 'Global'),
  (gen_random_uuid(), 'toyota', 'Toyota', 'Japan', 'toyota_yaris_cross_gr', 'Yaris Cross GR Sport (2024+)', 'suv', 2024, 2026, 'M15A-FXE 1.5 Hybrid AWD-i 130cv GR Sport', 130, 1490, 'hybrid', 'car', 'Europe'),

  -- ===== HONDA — nuovi 2024 =====
  (gen_random_uuid(), 'honda', 'Honda', 'Japan', 'honda_zrv', 'ZR-V e:HEV (2024+)', 'suv', 2024, 2026, 'LFE 2.0 e:HEV 184cv FWD', 184, 1993, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'honda', 'Honda', 'Japan', 'honda_zrv', 'ZR-V e:HEV (2024+)', 'suv', 2024, 2026, 'LFE 2.0 e:HEV 184cv Sport AWD', 184, 1993, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'honda', 'Honda', 'Japan', 'honda_eny1', 'e:Ny1 EV (2024+)', 'suv', 2024, 2026, 'Electric 150kW 204cv 68.8kWh FWD', 204, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'honda', 'Honda', 'Japan', 'honda_civic_ehev_2024', 'Civic e:HEV Facelift (2024+)', 'sedan', 2024, 2026, 'LFE 2.0 e:HEV 184cv Advance', 184, 1993, 'hybrid', 'car', 'Europe'),

  -- ===== FORD — nuovi 2024 =====
  (gen_random_uuid(), 'ford', 'Ford', 'USA', 'ford_capri_ev', 'Ford Capri EV (2024+)', 'suv', 2024, 2026, 'Electric RWD 170kW 286cv 77kWh Standard', 286, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'ford', 'Ford', 'USA', 'ford_capri_ev', 'Ford Capri EV (2024+)', 'suv', 2024, 2026, 'Electric AWD 250kW 340cv 77kWh Extended GT', 340, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'ford', 'Ford', 'USA', 'ford_explorer_ev', 'Explorer EV (2024+)', 'suv', 2024, 2026, 'Electric RWD 170kW 286cv 77kWh', 286, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'ford', 'Ford', 'USA', 'ford_explorer_ev', 'Explorer EV (2024+)', 'suv', 2024, 2026, 'Electric AWD 250kW 340cv 79kWh Extended Range', 340, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'ford', 'Ford', 'USA', 'ford_mustang_dark_horse', 'Mustang Dark Horse (2024+)', 'coupe', 2024, 2026, 'Coyote 5.0 V8 500cv manual Dark Horse', 500, 4951, 'gasoline', 'car', 'North America'),

  -- ===== HYUNDAI — nuovi 2025 =====
  (gen_random_uuid(), 'hyundai', 'Hyundai', 'South Korea', 'hyundai_ioniq9', 'IONIQ 9 (2025+)', 'suv', 2025, 2026, 'Electric RWD 218cv 110.3kWh Standard', 218, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'hyundai', 'Hyundai', 'South Korea', 'hyundai_ioniq9', 'IONIQ 9 (2025+)', 'suv', 2025, 2026, 'Electric AWD 304cv 110.3kWh Performance', 304, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'hyundai', 'Hyundai', 'South Korea', 'hyundai_ioniq9', 'IONIQ 9 (2025+)', 'suv', 2025, 2026, 'Electric AWD 422cv 110.3kWh N Line', 422, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'hyundai', 'Hyundai', 'South Korea', 'hyundai_kona_ev_gen2', 'Kona Electric Gen2 (2024+)', 'suv', 2024, 2026, 'Electric 48.4kWh 136cv Standard Range', 136, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'hyundai', 'Hyundai', 'South Korea', 'hyundai_kona_ev_gen2', 'Kona Electric Gen2 (2024+)', 'suv', 2024, 2026, 'Electric 65.4kWh 218cv Long Range', 218, NULL, 'electric', 'car', 'Europe'),

  -- ===== KIA — nuovi 2025 =====
  (gen_random_uuid(), 'kia', 'Kia', 'South Korea', 'kia_ev3', 'EV3 (2025+)', 'hatchback', 2025, 2026, 'Electric RWD 150kW 204cv 58.3kWh Standard', 204, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'kia', 'Kia', 'South Korea', 'kia_ev3', 'EV3 (2025+)', 'hatchback', 2025, 2026, 'Electric RWD 150kW 204cv 81.4kWh Long Range', 204, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'kia', 'Kia', 'South Korea', 'kia_ev9_gt', 'EV9 GT (2025+)', 'suv', 2025, 2026, 'Dual motor AWD 501cv 99.8kWh GT', 501, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'kia', 'Kia', 'South Korea', 'kia_sportage_2024', 'Sportage PHEV Facelift (2024+)', 'suv', 2024, 2026, 'T-GDI 1.6 PHEV 265cv AWD', 265, 1598, 'hybrid', 'car', 'Europe'),

  -- ===== PEUGEOT — nuovi EV 2024 =====
  (gen_random_uuid(), 'peugeot', 'Peugeot', 'France', 'peugeot_e3008', 'E-3008 (2024+)', 'suv', 2024, 2026, 'Electric FWD 213cv 73kWh Standard Range', 213, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'peugeot', 'Peugeot', 'France', 'peugeot_e3008', 'E-3008 (2024+)', 'suv', 2024, 2026, 'Electric FWD 231cv 98kWh Long Range', 231, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'peugeot', 'Peugeot', 'France', 'peugeot_e3008', 'E-3008 (2024+)', 'suv', 2024, 2026, 'Dual motor AWD 320cv 98kWh GT', 320, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'peugeot', 'Peugeot', 'France', 'peugeot_e5008', 'E-5008 (2024+)', 'suv', 2024, 2026, 'Electric FWD 231cv 98kWh 7-seat', 231, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'peugeot', 'Peugeot', 'France', 'peugeot_e5008', 'E-5008 (2024+)', 'suv', 2024, 2026, 'Dual motor AWD 320cv 98kWh GT Pack', 320, NULL, 'electric', 'car', 'Europe'),

  -- ===== RENAULT — nuovi 2024 =====
  (gen_random_uuid(), 'renault', 'Renault', 'France', 'renault_scenic_etech', 'Scenic E-Tech Electric (2024+)', 'suv', 2024, 2026, 'Electric FWD 170cv 60kWh Comfort Range', 170, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'renault', 'Renault', 'France', 'renault_scenic_etech', 'Scenic E-Tech Electric (2024+)', 'suv', 2024, 2026, 'Electric FWD 220cv 87kWh Long Range', 220, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'renault', 'Renault', 'France', 'renault_rafale', 'Rafale E-Tech PHEV (2024+)', 'suv', 2024, 2026, 'E-Tech 3.0 PHEV 300cv AWD', 300, 1598, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'renault', 'Renault', 'France', 'renault_rafale', 'Rafale E-Tech PHEV (2024+)', 'suv', 2024, 2026, 'E-Tech 3.0 PHEV 200cv FWD', 200, 1598, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'renault', 'Renault', 'France', 'renault_r5_etech', 'R5 E-Tech Electric (2024+)', 'hatchback', 2024, 2026, 'Electric 40kWh 120cv Urban', 120, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'renault', 'Renault', 'France', 'renault_r5_etech', 'R5 E-Tech Electric (2024+)', 'hatchback', 2024, 2026, 'Electric 52kWh 150cv Long Range', 150, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'renault', 'Renault', 'France', 'renault_r5_etech', 'R5 E-Tech Electric (2024+)', 'hatchback', 2024, 2026, 'Electric 52kWh 220cv Rallye Performance', 220, NULL, 'electric', 'car', 'Europe'),

  -- ===== OPEL — nuovi 2024 =====
  (gen_random_uuid(), 'opel', 'Opel', 'Germany', 'opel_grandland_ev', 'Grandland / Electric (2024+)', 'suv', 2024, 2026, 'Electric FWD 213cv 73kWh', 213, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'opel', 'Opel', 'Germany', 'opel_grandland_ev', 'Grandland / Electric (2024+)', 'suv', 2024, 2026, 'Electric AWD 320cv 98kWh GSe', 320, NULL, 'electric', 'car', 'Europe'),

  -- ===== DACIA — nuovi 2024-2025 =====
  (gen_random_uuid(), 'dacia', 'Dacia', 'Romania', 'dacia_duster_3', 'Duster 3 (2024+)', 'suv', 2024, 2026, 'TCe 130 1.2T mild hybrid 130cv 4x2', 130, 1199, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'dacia', 'Dacia', 'Romania', 'dacia_duster_3', 'Duster 3 (2024+)', 'suv', 2024, 2026, 'TCe 130 1.2T 4WD Extreme', 130, 1199, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'dacia', 'Dacia', 'Romania', 'dacia_duster_3', 'Duster 3 (2024+)', 'suv', 2024, 2026, 'Hybrid 140cv TCe FWD Journey', 140, 1199, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'dacia', 'Dacia', 'Romania', 'dacia_bigster', 'Bigster (2025+)', 'suv', 2025, 2026, 'TCe 130 1.2T 130cv mild hybrid 5-seat', 130, 1199, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'dacia', 'Dacia', 'Romania', 'dacia_bigster', 'Bigster (2025+)', 'suv', 2025, 2026, 'Hybrid 155cv MHEV 48V AWD Extreme', 155, 1199, 'hybrid', 'car', 'Europe'),

  -- ===== SEAT/CUPRA — nuovi 2024 =====
  (gen_random_uuid(), 'cupra', 'CUPRA', 'Spain', 'cupra_tavascan', 'Tavascan EV (2024+)', 'suv', 2024, 2026, 'Electric RWD 228cv 77kWh Endurance', 228, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'cupra', 'CUPRA', 'Spain', 'cupra_tavascan', 'Tavascan EV (2024+)', 'suv', 2024, 2026, 'Dual motor AWD 340cv 77kWh VZ', 340, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'cupra', 'CUPRA', 'Spain', 'cupra_terramar', 'Terramar PHEV (2024+)', 'suv', 2024, 2026, 'TSI 1.5 PHEV 204cv eHybrid', 204, 1498, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'cupra', 'CUPRA', 'Spain', 'cupra_terramar', 'Terramar PHEV (2024+)', 'suv', 2024, 2026, 'TSI 1.5 PHEV 272cv eHybrid VZ', 272, 1498, 'hybrid', 'car', 'Europe'),

  -- ===== SKODA — nuovi 2024-2025 =====
  (gen_random_uuid(), 'skoda', 'Škoda', 'Czech Republic', 'skoda_superb_b9', 'Superb B9 (2024+)', 'sedan', 2024, 2026, 'EA288 2.0 TDI 150cv DSG Combi', 150, 1968, 'diesel', 'car', 'Europe'),
  (gen_random_uuid(), 'skoda', 'Škoda', 'Czech Republic', 'skoda_superb_b9', 'Superb B9 (2024+)', 'sedan', 2024, 2026, 'EA888 2.0 TSI 265cv Sportline', 265, 1984, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'skoda', 'Škoda', 'Czech Republic', 'skoda_elroq', 'Elroq EV (2025+)', 'suv', 2025, 2026, 'Electric RWD 170cv 55kWh Elroq 50', 170, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'skoda', 'Škoda', 'Czech Republic', 'skoda_elroq', 'Elroq EV (2025+)', 'suv', 2025, 2026, 'Electric RWD 210cv 82kWh Elroq 85', 210, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'skoda', 'Škoda', 'Czech Republic', 'skoda_elroq', 'Elroq EV (2025+)', 'suv', 2025, 2026, 'Dual motor AWD 299cv 82kWh Elroq 85x vRS', 299, NULL, 'electric', 'car', 'Europe'),

  -- ===== VOLVO — nuovi EV 2024 =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'volvo_ex30', 'EX30 (2024+)', 'suv', 2024, 2026, 'Electric RWD 272cv 51kWh Single Motor', 272, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'volvo_ex30', 'EX30 (2024+)', 'suv', 2024, 2026, 'Dual motor AWD 428cv 69kWh Twin Performance', 428, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'volvo_ex90', 'EX90 (2025+)', 'suv', 2025, 2026, 'Dual motor AWD 408cv 111kWh Twin Motor', 408, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'volvo_ex90', 'EX90 (2025+)', 'suv', 2025, 2026, 'Dual motor AWD 517cv 111kWh Twin Motor Performance', 517, NULL, 'electric', 'car', 'Global'),

  -- ===== ALFA ROMEO — nuovi 2024 =====
  (gen_random_uuid(), 'alfa_romeo', 'Alfa Romeo', 'Italy', 'alfa_junior', 'Junior / Junior Veloce (2024+)', 'suv', 2024, 2026, 'Electric 115kW 156cv 54kWh FWD', 156, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'alfa_romeo', 'Alfa Romeo', 'Italy', 'alfa_junior', 'Junior / Junior Veloce (2024+)', 'suv', 2024, 2026, 'Electric 176kW 240cv 54kWh Veloce AWD', 240, NULL, 'electric', 'car', 'Europe'),
  (gen_random_uuid(), 'alfa_romeo', 'Alfa Romeo', 'Italy', 'alfa_junior', 'Junior / Junior Veloce (2024+)', 'suv', 2024, 2026, 'Hybrid 1.2T 136cv mild hybrid', 136, 1199, 'hybrid', 'car', 'Europe'),

  -- ===== FIAT — nuovi 2024 =====
  (gen_random_uuid(), 'fiat', 'Fiat', 'Italy', 'fiat_grande_panda', 'Grande Panda (2024+)', 'hatchback', 2024, 2026, 'Hybrid 1.2T 100cv mild hybrid', 100, 1199, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'fiat', 'Fiat', 'Italy', 'fiat_grande_panda', 'Grande Panda (2024+)', 'hatchback', 2024, 2026, 'Electric 83kW 113cv 44kWh FWD', 113, NULL, 'electric', 'car', 'Europe'),

  -- ===== LANCIA — nuovi 2024 =====
  (gen_random_uuid(), 'lancia', 'Lancia', 'Italy', 'lancia_ypsilon_2024', 'Ypsilon (2024+)', 'hatchback', 2024, 2026, 'Hybrid 1.2T 100cv mild hybrid', 100, 1199, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'lancia', 'Lancia', 'Italy', 'lancia_ypsilon_2024', 'Ypsilon (2024+)', 'hatchback', 2024, 2026, 'Electric 83kW 113cv 54kWh Edizione Limitata', 113, NULL, 'electric', 'car', 'Europe'),

  -- ===== LUCID MOTORS — nuovi 2025 =====
  (gen_random_uuid(), 'lucid_motors', 'Lucid Motors', 'USA', 'lucid_gravity', 'Gravity SUV (2025+)', 'suv', 2025, 2026, 'Dual motor AWD 828cv 112kWh Grand Touring', 828, NULL, 'electric', 'car', 'North America'),
  (gen_random_uuid(), 'lucid_motors', 'Lucid Motors', 'USA', 'lucid_gravity', 'Gravity SUV (2025+)', 'suv', 2025, 2026, 'Dual motor AWD 615cv 112kWh Pure', 615, NULL, 'electric', 'car', 'North America'),

  -- ===== RIVIAN — nuovi 2025 =====
  (gen_random_uuid(), 'rivian', 'Rivian', 'USA', 'rivian_r2', 'R2 SUV (2026+)', 'suv', 2026, 2026, 'Electric AWD 600cv dual motor', 600, NULL, 'electric', 'car', 'North America'),
  (gen_random_uuid(), 'rivian', 'Rivian', 'USA', 'rivian_r2', 'R2 SUV (2026+)', 'suv', 2026, 2026, 'Electric RWD 300cv single motor', 300, NULL, 'electric', 'car', 'North America'),

  -- ===== SCOUT MOTORS (VW Group US) — 2026 =====
  (gen_random_uuid(), 'scout_motors', 'Scout Motors', 'USA', 'scout_terra', 'Scout Terra Truck (2026+)', 'pickup', 2026, 2026, 'Electric AWD 350+ miles EREV', 400, NULL, 'electric', 'car', 'North America'),
  (gen_random_uuid(), 'scout_motors', 'Scout Motors', 'USA', 'scout_traveler', 'Scout Traveler SUV (2026+)', 'suv', 2026, 2026, 'Electric AWD 350+ miles EREV', 400, NULL, 'electric', 'car', 'North America'),

  -- ===== DEEPAL (Changan EV — nuovo brand) =====
  (gen_random_uuid(), 'deepal', 'Deepal', 'China', 'deepal_sl03', 'SL03 (2022+)', 'sedan', 2022, 2026, 'Electric RWD 160kW 218cv 66.7kWh BEV', 218, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'deepal', 'Deepal', 'China', 'deepal_sl03', 'SL03 (2022+)', 'sedan', 2022, 2026, 'EREV Range Extender 1.5T 80kWh 1200km', 218, 1497, 'hybrid', 'car', 'Asia'),
  (gen_random_uuid(), 'deepal', 'Deepal', 'China', 'deepal_s07', 'S07 SUV (2024+)', 'suv', 2024, 2026, 'Electric AWD 330kW 449cv 82kWh EREV Performance', 449, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'deepal', 'Deepal', 'China', 'deepal_s07', 'S07 SUV (2024+)', 'suv', 2024, 2026, 'Electric RWD 220kW 299cv 82kWh Standard', 299, NULL, 'electric', 'car', 'Asia'),

  -- ===== AITO (Huawei — nuovo brand) =====
  (gen_random_uuid(), 'aito', 'AITO', 'China', 'aito_m9', 'M9 SUV (2024+)', 'suv', 2024, 2026, 'EREV 1.5T + Electric AWD 800V 1000km range', 500, 1494, 'hybrid', 'car', 'Asia'),
  (gen_random_uuid(), 'aito', 'AITO', 'China', 'aito_m9', 'M9 SUV (2024+)', 'suv', 2024, 2026, 'Electric AWD 800V BEV 150kWh 630km', 500, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'aito', 'AITO', 'China', 'aito_m7', 'M7 SUV (2024+)', 'suv', 2023, 2026, 'EREV 1.5T PHEV AWD 1300km ultra range', 330, 1494, 'hybrid', 'car', 'Asia'),
  (gen_random_uuid(), 'aito', 'AITO', 'China', 'aito_m7', 'M7 SUV (2024+)', 'suv', 2023, 2026, 'EREV 1.5T FWD 1100km standard', 220, 1494, 'hybrid', 'car', 'Asia'),

  -- ===== AVATR (Huawei+Changan — nuovo brand) =====
  (gen_random_uuid(), 'avatr', 'Avatr', 'China', 'avatr_11', 'Avatr 11 (2022+)', 'suv', 2022, 2026, 'Dual motor AWD CATL 425kW 578cv 90kWh', 578, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'avatr', 'Avatr', 'China', 'avatr_11', 'Avatr 11 (2022+)', 'suv', 2022, 2026, 'Single motor RWD 200kW 272cv Long Range', 272, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'avatr', 'Avatr', 'China', 'avatr_12', 'Avatr 12 sedan (2024+)', 'sedan', 2024, 2026, 'Dual motor AWD 425kW 578cv 90kWh GT', 578, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'avatr', 'Avatr', 'China', 'avatr_12', 'Avatr 12 sedan (2024+)', 'sedan', 2024, 2026, 'Single motor RWD 230kW 313cv 94.5kWh', 313, NULL, 'electric', 'car', 'Asia'),

  -- ===== YANGWANG (BYD luxury — nuovo brand) =====
  (gen_random_uuid(), 'yangwang', 'Yangwang', 'China', 'yangwang_u8', 'U8 PHEV SUV (2023+)', 'suv', 2023, 2026, 'Quad motor PHEV 1196cv DiSus-P off-road', 1196, 2000, 'hybrid', 'car', 'Asia'),
  (gen_random_uuid(), 'yangwang', 'Yangwang', 'China', 'yangwang_u9', 'U9 Supercar (2024+)', 'coupe', 2024, 2026, 'Quad motor EV 960kW 1305cv DiSus-X', 1305, NULL, 'electric', 'car', 'Asia'),

  -- ===== ONVO (Nio budget brand — nuovo) =====
  (gen_random_uuid(), 'onvo', 'Onvo', 'China', 'onvo_l60', 'L60 SUV (2024+)', 'suv', 2024, 2026, 'Electric RWD 240kW 326cv 85kWh Standard', 326, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'onvo', 'Onvo', 'China', 'onvo_l60', 'L60 SUV (2024+)', 'suv', 2024, 2026, 'Dual motor AWD 340kW 462cv 100kWh Performance', 462, NULL, 'electric', 'car', 'Asia'),
  (gen_random_uuid(), 'onvo', 'Onvo', 'China', 'onvo_l90', 'L90 SUV 6-seat (2025+)', 'suv', 2025, 2026, 'Electric AWD 400kW 544cv 100kWh L90 Performance', 544, NULL, 'electric', 'car', 'Asia'),

  -- ===== MASERATI — GranCabrio Folgore 2024 =====
  (gen_random_uuid(), 'maserati', 'Maserati', 'Italy', 'maserati_grancabrio_folgore', 'GranCabrio Folgore (2024+)', 'convertible', 2024, 2026, 'Tri-motor EV 760cv Folgore AWD', 760, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'maserati', 'Maserati', 'Italy', 'maserati_grancabrio_folgore', 'GranCabrio Folgore (2024+)', 'convertible', 2024, 2026, 'V6 Nettuno 3.0 Trofeo 550cv cabriolet', 550, 2994, 'gasoline', 'car', 'Global'),

  -- ===== POLESTAR — nuovi 2024 =====
  (gen_random_uuid(), 'polestar', 'Polestar', 'Sweden', 'polestar_3', 'Polestar 3 SUV (2024+)', 'suv', 2024, 2026, 'Dual motor AWD 489cv 111kWh Standard', 489, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'polestar', 'Polestar', 'Sweden', 'polestar_3', 'Polestar 3 SUV (2024+)', 'suv', 2024, 2026, 'Dual motor AWD 517cv 111kWh Performance Pack', 517, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'polestar', 'Polestar', 'Sweden', 'polestar_4', 'Polestar 4 SUV-coupé (2024+)', 'suv', 2024, 2026, 'Single motor RWD 272cv 94kWh Standard Range', 272, NULL, 'electric', 'car', 'Global'),
  (gen_random_uuid(), 'polestar', 'Polestar', 'Sweden', 'polestar_4', 'Polestar 4 SUV-coupé (2024+)', 'suv', 2024, 2026, 'Dual motor AWD 544cv 100kWh Long Range Performance', 544, NULL, 'electric', 'car', 'Global')

ON CONFLICT DO NOTHING;

-- Fine: 102 motorizzazioni — batch 17 NUOVI 2024-2026
-- Brand NUOVI aggiunti: deepal, aito, avatr, yangwang, onvo, scout_motors
-- Totale atteso DB: ~13300 + 102 = ~13402

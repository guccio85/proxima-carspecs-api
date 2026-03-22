-- Batch 18 — VOLVO COMPLETO 1947→2026
-- Speculare a quanto aggiunto in ProximaDrivers (merge_volvo_complete.py)
-- Historic (brand_id: volvo): PV444, 140, 164, 66
-- Modern  (brand_id: volvo): 260, 340, 440, 780, 850base, S70, S80II,
--                             S60II/V60I, V60CCI, XC60I, C70II, S90II/V90II
INSERT INTO vehicle_specs
  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)
VALUES

  -- ===== PV444 (1947–1958) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_pv444', 'PV444 (1947–1958)', 'sedan', 1947, 1958, 'B4B 1.4 OHV 40cv carb', 40, 1414, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_pv444', 'PV444 (1947–1958)', 'sedan', 1947, 1958, 'B4B 1.4 OHV 51cv Sport', 51, 1414, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_pv444', 'PV444 (1947–1958)', 'sedan', 1947, 1958, 'B4B 1.4 OHV 70cv HS twin-carb', 70, 1414, 'gasoline', 'car', 'Europe'),

  -- ===== 140 Series — 142/144/145 (1966–1974) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_140', '140 Series — 142/144/145 (1966–1974)', 'sedan', 1966, 1974, 'B18 1.8 OHV 90cv 144', 90, 1778, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_140', '140 Series — 142/144/145 (1966–1974)', 'sedan', 1966, 1974, 'B20A 2.0 OHV 100cv 144', 100, 1986, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_140', '140 Series — 142/144/145 (1966–1974)', 'sedan', 1966, 1974, 'B20B 2.0 OHV 118cv 142 Sport', 118, 1986, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_140', '140 Series — 142/144/145 (1966–1974)', 'sedan', 1966, 1974, 'B20E 2.0 iniezione 130cv 144E', 130, 1986, 'gasoline', 'car', 'Europe'),

  -- ===== 164 (1968–1975) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_164', '164 (1968–1975)', 'sedan', 1968, 1975, 'B30 3.0 6cil 130cv', 130, 2978, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_164', '164 (1968–1975)', 'sedan', 1968, 1975, 'B30E 3.0 6cil iniezione 145cv', 145, 2978, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_164', '164 (1968–1975)', 'sedan', 1968, 1975, 'B30F 3.0 6cil Carb 145cv TE', 145, 2978, 'gasoline', 'car', 'Europe'),

  -- ===== 66 (1975–1980) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_66', '66 (1975–1980)', 'hatchback', 1975, 1980, '1.1 OHV 47cv 66 DL', 47, 1108, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_66', '66 (1975–1980)', 'hatchback', 1975, 1980, '1.3 OHV 57cv 66 GL', 57, 1289, 'gasoline', 'car', 'Europe'),

  -- ===== 260 / 264 / 265 (1975–1993) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_260', '260 / 264 / 265 (1975–1993)', 'sedan', 1975, 1993, 'PRV B27E 2.7 V6 140cv', 140, 2664, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_260', '260 / 264 / 265 (1975–1993)', 'sedan', 1975, 1993, 'PRV B28F 2.8 V6 carb 155cv', 155, 2849, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_260', '260 / 264 / 265 (1975–1993)', 'sedan', 1975, 1993, 'PRV B28E 2.8 V6 iniezione 157cv', 157, 2849, 'gasoline', 'car', 'Europe'),

  -- ===== 340 / 345 / 360 (1976–1991) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_340_360', '340 / 345 / 360 (1976–1991)', 'sedan', 1976, 1991, '1.4 OHV 70cv 344/345', 70, 1397, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_340_360', '340 / 345 / 360 (1976–1991)', 'sedan', 1976, 1991, '1.7 OHV 85cv', 85, 1721, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_340_360', '340 / 345 / 360 (1976–1991)', 'sedan', 1976, 1991, 'B200 2.0 100cv 360', 100, 1986, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_340_360', '340 / 345 / 360 (1976–1991)', 'sedan', 1976, 1991, 'B200F 2.0 carb 109cv 360 GLT', 109, 1986, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_340_360', '340 / 345 / 360 (1976–1991)', 'sedan', 1976, 1991, '1.6D diesel 54cv', 54, 1596, 'diesel', 'car', 'Europe'),

  -- ===== 440 / 460 / 480 (1987–1997) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_440_480', '440 / 460 / 480 (1987–1997)', 'hatchback', 1987, 1997, '1.6 8v 80cv 440 GL', 80, 1596, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_440_480', '440 / 460 / 480 (1987–1997)', 'hatchback', 1987, 1997, '1.8 8v 90cv 440 GLT', 90, 1794, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_440_480', '440 / 460 / 480 (1987–1997)', 'hatchback', 1987, 1997, '2.0T Turbo 120cv 440 Turbo', 120, 1998, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_440_480', '440 / 460 / 480 (1987–1997)', 'hatchback', 1987, 1997, '2.0 16v 133cv 480 ES', 133, 1998, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_440_480', '440 / 460 / 480 (1987–1997)', 'hatchback', 1987, 1997, '480 Turbo 2.0T 120cv', 120, 1998, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_440_480', '440 / 460 / 480 (1987–1997)', 'hatchback', 1987, 1997, '1.9D diesel 65cv 440 D', 65, 1870, 'diesel', 'car', 'Europe'),

  -- ===== 780 Coupé Bertone (1986–1990) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_780', '780 Coupé Bertone (1986–1990)', 'coupe', 1986, 1990, 'PRV 2.8 V6 Bertone 140cv', 140, 2849, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_780', '780 Coupé Bertone (1986–1990)', 'coupe', 1986, 1990, 'B230FT 2.3T Turbo 188cv', 188, 2316, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_780', '780 Coupé Bertone (1986–1990)', 'coupe', 1986, 1990, '2.8 V6 Intercooler 204cv', 204, 2849, 'gasoline', 'car', 'Europe'),

  -- ===== 850 base / GLT (1991–1997) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_850_base', '850 2.0 / 2.4 / GLT (1991–1997)', 'sedan', 1991, 1997, 'B5202S 2.0 5cil 126cv', 126, 1984, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_850_base', '850 2.0 / 2.4 / GLT (1991–1997)', 'sedan', 1991, 1997, 'B5252S 2.4 5cil 144cv', 144, 2435, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_850_base', '850 2.0 / 2.4 / GLT (1991–1997)', 'sedan', 1991, 1997, 'B5252S 2.5 5cil 170cv GLT', 170, 2473, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_850_base', '850 2.0 / 2.4 / GLT (1991–1997)', 'sedan', 1991, 1997, 'B5234T 2.3T 193cv Turbo', 193, 2319, 'gasoline', 'car', 'Europe'),

  -- ===== S70 / C70 Coupé P80 (1996–2000) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s70', 'S70 / C70 Coupé P80 (1996–2000)', 'sedan', 1996, 2000, 'B5252S 2.4 5cil 144cv S70', 144, 2435, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s70', 'S70 / C70 Coupé P80 (1996–2000)', 'sedan', 1996, 2000, '2.4 170cv S70 SE', 170, 2435, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s70', 'S70 / C70 Coupé P80 (1996–2000)', 'sedan', 1996, 2000, '2.4T 193cv S70 T5 FWD', 193, 2319, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s70', 'S70 / C70 Coupé P80 (1996–2000)', 'sedan', 1996, 2000, '2.3T AWD 240cv S70 AWD Turbo', 240, 2319, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s70', 'S70 / C70 Coupé P80 (1996–2000)', 'sedan', 1996, 2000, 'D5 2.4d TDI 140cv S70 D', 140, 2461, 'diesel', 'car', 'Europe'),

  -- ===== S80 II (AS — 2006–2016) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s80_2', 'S80 II (AS — 2006–2016)', 'sedan', 2006, 2016, '2.0T 4cil 203cv T4 FWD', 203, 1999, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s80_2', 'S80 II (AS — 2006–2016)', 'sedan', 2006, 2016, '2.5T 200cv T5 FWD', 200, 2521, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s80_2', 'S80 II (AS — 2006–2016)', 'sedan', 2006, 2016, '3.2 6cil 238cv T6 AWD', 238, 3192, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s80_2', 'S80 II (AS — 2006–2016)', 'sedan', 2006, 2016, '4.4 V8 315cv S80 V8 AWD', 315, 4414, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s80_2', 'S80 II (AS — 2006–2016)', 'sedan', 2006, 2016, 'D3 2.0d 150cv', 150, 1984, 'diesel', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s80_2', 'S80 II (AS — 2006–2016)', 'sedan', 2006, 2016, 'D5 2.4d 185cv AWD', 185, 2401, 'diesel', 'car', 'Europe'),

  -- ===== S60 II / V60 I (Y20 — 2010–2018) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s60_v60_2', 'S60 II / V60 I (Y20 — 2010–2018)', 'sedan', 2010, 2018, '2.0T 152cv T3', 152, 1999, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s60_v60_2', 'S60 II / V60 I (Y20 — 2010–2018)', 'sedan', 2010, 2018, '2.0T 180cv T4', 180, 1999, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s60_v60_2', 'S60 II / V60 I (Y20 — 2010–2018)', 'sedan', 2010, 2018, '2.5T 249cv T5 AWD', 249, 2521, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s60_v60_2', 'S60 II / V60 I (Y20 — 2010–2018)', 'sedan', 2010, 2018, '3.0T 305cv T6 AWD', 305, 2953, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s60_v60_2', 'S60 II / V60 I (Y20 — 2010–2018)', 'sedan', 2010, 2018, '2.0T PHEV 340cv T8 AWD Polestar', 340, 1999, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s60_v60_2', 'S60 II / V60 I (Y20 — 2010–2018)', 'sedan', 2010, 2018, 'D3 2.0d 136cv', 136, 1984, 'diesel', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s60_v60_2', 'S60 II / V60 I (Y20 — 2010–2018)', 'sedan', 2010, 2018, 'D4 2.0d 181cv', 181, 1984, 'diesel', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s60_v60_2', 'S60 II / V60 I (Y20 — 2010–2018)', 'sedan', 2010, 2018, 'D5 2.4d 215cv AWD', 215, 2401, 'diesel', 'car', 'Europe'),

  -- ===== V60 Cross Country I (2015–2018) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_v60_cc1', 'V60 Cross Country I (2015–2018)', 'wagon', 2015, 2018, '2.0T 245cv T5 AWD', 245, 1999, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_v60_cc1', 'V60 Cross Country I (2015–2018)', 'wagon', 2015, 2018, 'D4 2.4d 190cv AWD', 190, 2401, 'diesel', 'car', 'Europe'),

  -- ===== XC60 I (DZ — 2008–2017) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_xc60_1', 'XC60 I (DZ — 2008–2017)', 'suv', 2008, 2017, '2.0T 150cv T3 FWD', 150, 1999, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_xc60_1', 'XC60 I (DZ — 2008–2017)', 'suv', 2008, 2017, '2.0T 180cv T4 FWD', 180, 1999, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_xc60_1', 'XC60 I (DZ — 2008–2017)', 'suv', 2008, 2017, '2.5T 249cv T5 AWD', 249, 2521, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_xc60_1', 'XC60 I (DZ — 2008–2017)', 'suv', 2008, 2017, '3.0T 305cv T6 AWD', 305, 2953, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_xc60_1', 'XC60 I (DZ — 2008–2017)', 'suv', 2008, 2017, '2.0T PHEV 400cv T8 Recharge AWD', 400, 1999, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_xc60_1', 'XC60 I (DZ — 2008–2017)', 'suv', 2008, 2017, 'D3 2.0d 150cv', 150, 1984, 'diesel', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_xc60_1', 'XC60 I (DZ — 2008–2017)', 'suv', 2008, 2017, 'D4 2.0d 181cv AWD', 181, 1984, 'diesel', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_xc60_1', 'XC60 I (DZ — 2008–2017)', 'suv', 2008, 2017, 'D5 2.4d 215cv AWD', 215, 2401, 'diesel', 'car', 'Europe'),

  -- ===== C70 II Cabriolet (N70 — 2006–2013) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_c70_2', 'C70 II Cabriolet (N70 — 2006–2013)', 'cabriolet', 2006, 2013, '2.4i 140cv FWD 2.4i', 140, 2435, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_c70_2', 'C70 II Cabriolet (N70 — 2006–2013)', 'cabriolet', 2006, 2013, '2.4T 220cv T5', 220, 2521, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_c70_2', 'C70 II Cabriolet (N70 — 2006–2013)', 'cabriolet', 2006, 2013, '2.5T 230cv T5 Turbo', 230, 2521, 'gasoline', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_c70_2', 'C70 II Cabriolet (N70 — 2006–2013)', 'cabriolet', 2006, 2013, 'D5 2.4d 180cv diesel', 180, 2401, 'diesel', 'car', 'Europe'),

  -- ===== S90 II / V90 II (SPA — 2016+) =====
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s90_2', 'S90 II / V90 II (SPA — 2016+)', 'sedan', 2016, 2026, '2.0T B4 197cv FWD', 197, 1969, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s90_2', 'S90 II / V90 II (SPA — 2016+)', 'sedan', 2016, 2026, '2.0T B5 250cv AWD', 250, 1969, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s90_2', 'S90 II / V90 II (SPA — 2016+)', 'sedan', 2016, 2026, '2.0T B6 300cv AWD', 300, 1969, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s90_2', 'S90 II / V90 II (SPA — 2016+)', 'sedan', 2016, 2026, '2.0T T8 390cv Recharge PHEV AWD', 390, 1969, 'hybrid', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s90_2', 'S90 II / V90 II (SPA — 2016+)', 'sedan', 2016, 2026, '2.0D D4 190cv AWD', 190, 1969, 'diesel', 'car', 'Europe'),
  (gen_random_uuid(), 'volvo', 'Volvo', 'Sweden', 'vol_s90_2', 'S90 II / V90 II (SPA — 2016+)', 'sedan', 2016, 2026, '2.0D D5 235cv AWD', 235, 1969, 'diesel', 'car', 'Europe')

ON CONFLICT DO NOTHING;

-- Fine: 72 engines — 16 modelli Volvo completi 1947→2026
-- Speculare a merge_volvo_complete.py (ProximaDrivers commit b4bca7e)

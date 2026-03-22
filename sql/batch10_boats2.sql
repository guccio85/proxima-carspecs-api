-- Batch 10 — BARCHE vol.2: Wake / Fishing / Tender / Superyacht / Sailboat (82 motorizzazioni)
INSERT INTO vehicle_specs
  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)
VALUES
  -- MasterCraft (US wakeboat)
  (gen_random_uuid(), 'mastercraft', 'MasterCraft', 'USA', 'mc_x24', 'X24 (2018+)', 'wakeboat', 2018, 2026, 'Ilmor 6.0L V8 450cv', 450, 5967, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'mastercraft', 'MasterCraft', 'USA', 'mc_x24', 'X24 (2018+)', 'wakeboat', 2018, 2026, 'Indmar 6.2L V8 500cv', 500, 6200, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'mastercraft', 'MasterCraft', 'USA', 'mc_x26', 'X26 (2022+)', 'wakeboat', 2022, 2026, 'Ilmor ZZ8 6.2L V8 550cv tower spec', 550, 6200, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'mastercraft', 'MasterCraft', 'USA', 'mc_nxt22', 'NXT22 (2016+)', 'wakeboat', 2016, 2026, 'Indmar 5.7L V8 330cv NXT22 ProStar', 330, 5733, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'mastercraft', 'MasterCraft', 'USA', 'mc_prostar', 'ProStar (2018+)', 'wakeboat', 2018, 2026, 'Ilmor 5.3L V8 300cv', 300, 5328, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'mastercraft', 'MasterCraft', 'USA', 'mc_prostar', 'ProStar (2018+)', 'wakeboat', 2018, 2026, 'Ilmor 6.0L V8 400cv', 400, 5967, 'gasoline', 'boat', 'North America'),
  -- Boston Whaler (US fishing)
  (gen_random_uuid(), 'boston_whaler', 'Boston Whaler', 'USA', 'bw_130_super_sport', '130 Super Sport (2016+)', 'motorboat', 2016, 2026, 'Mercury 40 EFI 40cv outboard', 40, 935, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'boston_whaler', 'Boston Whaler', 'USA', 'bw_170_montauk', '170 Montauk (2016+)', 'motorboat', 2016, 2026, 'Mercury 115 EFI 115cv outboard', 115, 1526, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'boston_whaler', 'Boston Whaler', 'USA', 'bw_270_vantage', '270 Vantage (2019+)', 'motorboat', 2019, 2026, 'Mercury Verado 300cv x2 twin outboard', 600, NULL, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'boston_whaler', 'Boston Whaler', 'USA', 'bw_350_realm', '350 Realm (2018+)', 'motorboat', 2018, 2026, 'Mercury Verado 350cv x4 quad outboard', 1400, NULL, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'boston_whaler', 'Boston Whaler', 'USA', 'bw_420_outrage', '420 Outrage (2018+)', 'motorboat', 2018, 2026, 'Mercury Verado 400cv x4 quad outboard', 1600, NULL, 'gasoline', 'boat', 'North America'),
  -- Williams Jet Tenders (GB luxury tender)
  (gen_random_uuid(), 'williams_jet_tenders', 'Williams Jet Tenders', 'UK', 'wjt_turbojet_325', 'Turbojet 325 (2018+)', 'tender', 2018, 2026, 'Yamaha TR-1 HO 1049cc 100cv', 100, 1049, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'williams_jet_tenders', 'Williams Jet Tenders', 'UK', 'wjt_turbojet_445', 'Turbojet 445 (2018+)', 'tender', 2018, 2026, 'Rotax 1503 Turbo 300cv upgraded', 300, 1503, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'williams_jet_tenders', 'Williams Jet Tenders', 'UK', 'williams_turbojet_520', 'Turbojet 520', 'tender', 2019, 2026, 'BRP Rotax 1630 170HP', 170, 1630, 'gasoline', 'boat', 'Global'),
  (gen_random_uuid(), 'williams_jet_tenders', 'Williams Jet Tenders', 'UK', 'williams_turbojet_625', 'Turbojet 625', 'tender', 2020, 2026, 'BRP Rotax 1630 Turbo 230HP', 230, 1630, 'gasoline', 'boat', 'Global'),
  -- Bayliner (US pleasureboat)
  (gen_random_uuid(), 'bayliner', 'Bayliner', 'USA', 'bay_element_xr7', 'Element XR7 (2017+)', 'motorboat', 2017, 2026, 'Mercury 115cv 4-cyl outboard', 115, 1526, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'bayliner', 'Bayliner', 'USA', 'bay_vr5', 'VR5 (2019+)', 'motorboat', 2019, 2026, 'Mercury 150cv outboard', 150, 2065, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'bayliner', 'Bayliner', 'USA', 'bay_trophy_22cc', 'Trophy 22CC (2016+)', 'motorboat', 2016, 2026, 'Mercury 150cv outboard EFI', 150, 2065, 'gasoline', 'boat', 'North America'),
  -- Chris-Craft (US classic boat)
  (gen_random_uuid(), 'chris_craft', 'Chris-Craft', 'USA', 'cc_launch_25', 'Launch 25 GT (2020+)', 'motorboat', 2020, 2026, 'Mercury 300cv V8 MPI inboard', 300, 4600, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'chris_craft', 'Chris-Craft', 'USA', 'cc_catalina_25', 'Catalina 25 (2018+)', 'motorboat', 2018, 2026, 'Ilmor V8 5.7L 330cv', 330, 5733, 'gasoline', 'boat', 'North America'),
  (gen_random_uuid(), 'chris_craft', 'Chris-Craft', 'USA', 'cc_corsair_28', 'Corsair 28 (2019+)', 'motorboat', 2019, 2026, 'Mercury V8 6.2L 380cv inboard', 380, 6162, 'gasoline', 'boat', 'North America'),
  -- Sacs Marine (IT high-performance RIB)
  (gen_random_uuid(), 'sacs_marine', 'Sacs Marine', 'Italy', 'sacs_strider_13', 'Strider 13 (2018+)', 'rib', 2018, 2026, 'Mercury 300HP V8 outboard', 300, 4169, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'sacs_marine', 'Sacs Marine', 'Italy', 'sacs_strider_13', 'Strider 13 (2018+)', 'rib', 2018, 2026, 'Mercury 600HP V12 Verado outboard', 600, 7496, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'sacs_marine', 'Sacs Marine', 'Italy', 'sacs_strider_15', 'Strider 15 (2019+)', 'rib', 2019, 2026, 'Volvo Penta 400HP inboard', 400, 5700, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'sacs_marine', 'Sacs Marine', 'Italy', 'sacs_strider_17', 'Strider 17 (2020+)', 'rib', 2020, 2026, 'Mercury 600HP V12 quad outboard', 600, 7496, 'gasoline', 'boat', 'Europe'),
  -- Itama (IT open motorboat)
  (gen_random_uuid(), 'itama', 'Itama', 'Italy', 'itama_itama_45s', 'Itama 45S', 'motorboat', 2018, 2026, 'Volvo Penta D6 2x 400cv twin diesel', 800, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'itama', 'Itama', 'Italy', 'itama_itama_62', 'Itama 62', 'motorboat', 2019, 2026, 'MAN V12 2x 1000cv twin diesel shaft', 2000, NULL, 'diesel', 'boat', 'Europe'),
  -- Sanlorenzo (IT superyacht)
  (gen_random_uuid(), 'sanlorenzo', 'Sanlorenzo', 'Italy', 'sanlorenzo_sl78', 'SL78 (2019+)', 'superyacht', 2019, 2026, 'MTU 12V 2000 M96L 2x 1600cv twin', 3200, NULL, 'diesel', 'boat', 'Global'),
  (gen_random_uuid(), 'sanlorenzo', 'Sanlorenzo', 'Italy', 'sanlorenzo_sl96a', 'SL96A Asymmetric (2021+)', 'superyacht', 2021, 2026, 'MAN V12 2x 1400cv twin shaft', 2800, NULL, 'diesel', 'boat', 'Global'),
  -- Fairline (GB)
  (gen_random_uuid(), 'fairline', 'Fairline', 'UK', 'fairline_targa_40_open', 'Targa 40 Open', 'yacht', 2018, 2026, 'Volvo Penta D4-300 300hp IPS Twin', 600, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'fairline', 'Fairline', 'UK', 'fairline_targa_40_open', 'Targa 40 Open', 'yacht', 2018, 2026, 'Yanmar 6LY3 440hp Twin IPS', 880, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'fairline', 'Fairline', 'UK', 'fairline_targa_45', 'Targa 45', 'yacht', 2020, 2026, 'Volvo Penta IPS 600 435hp GT Twin', 870, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'fairline', 'Fairline', 'UK', 'fairline_targa_50_gran_turismo', 'Targa 50 Gran Turismo', 'yacht', 2019, 2026, 'Volvo Penta IPS 800 600hp Twin', 1200, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'fairline', 'Fairline', 'UK', 'fairline_targa_50_gran_turismo', 'Targa 50 Gran Turismo', 'yacht', 2019, 2026, 'MAN V8 630hp Twin Shaft Drive', 1260, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'fairline', 'Fairline', 'UK', 'fairline_squadron_53', 'Squadron 53', 'yacht', 2018, 2026, 'Volvo Penta IPS 1050 800hp Twin', 1600, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'fairline', 'Fairline', 'UK', 'fairline_squadron_53', 'Squadron 53', 'yacht', 2018, 2026, 'MAN V12 1000hp Twin Shaft', 2000, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'fairline', 'Fairline', 'UK', 'fairline_squadron_68', 'Squadron 68', 'superyacht', 2019, 2026, 'CAT C18 2x 1015cv twin ACERT', 2030, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'fairline', 'Fairline', 'UK', 'fairline_squadron_78', 'Squadron 78', 'superyacht', 2020, 2026, 'MTU 16V 2000 M96L 3140hp Twin', 3140, NULL, 'diesel', 'boat', 'Global'),
  (gen_random_uuid(), 'fairline', 'Fairline', 'UK', 'fairline_targa_55_open', 'Targa 55 Open', 'yacht', 2021, 2026, 'Volvo Penta IPS 1050 800hp Twin', 1600, NULL, 'diesel', 'boat', 'Europe'),
  -- Galeon (PL)
  (gen_random_uuid(), 'galeon', 'Galeon', 'Poland', 'galeon_galeon_400_fly', 'Galeon 400 Fly', 'motorboat', 2018, 2026, 'Volvo Penta IPS 600 2x 435cv', 870, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'galeon', 'Galeon', 'Poland', 'galeon_galeon_500_fly', 'Galeon 500 Fly', 'motorboat', 2019, 2026, 'Volvo Penta IPS 950 2x 700cv', 1400, NULL, 'diesel', 'boat', 'Europe'),
  -- Nordhavn (US ocean trawler)
  (gen_random_uuid(), 'nordhavn', 'Nordhavn', 'USA', 'nordhavn_nordhavn_40', 'Nordhavn 40 Passagemaker', 'motorboat', 2010, 2026, 'John Deere 6068 180hp diesel trawler', 180, 6800, 'diesel', 'boat', 'Global'),
  (gen_random_uuid(), 'nordhavn', 'Nordhavn', 'USA', 'nordhavn_nordhavn_60', 'Nordhavn 60 (2018+)', 'motorboat', 2018, 2026, 'John Deere 6090AFM75 330hp diesel', 330, 9000, 'diesel', 'boat', 'Global'),
  -- Zodiac Nautic (FR RIB)
  (gen_random_uuid(), 'zodiac_nautic', 'Zodiac Nautic', 'France', 'zodiac_medline_580', 'Medline 580 (2019+)', 'rib', 2019, 2026, 'Mercury FourStroke 115HP outboard', 115, 2064, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'zodiac_nautic', 'Zodiac Nautic', 'France', 'zodiac_medline_650', 'Medline 650 (2019+)', 'rib', 2019, 2026, 'Yamaha F200 200HP outboard', 200, 3350, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'zodiac_nautic', 'Zodiac Nautic', 'France', 'zodiac_medline_750', 'Medline 750 (2020+)', 'rib', 2020, 2026, 'Yamaha F300 300HP outboard', 300, 4169, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'zodiac_nautic', 'Zodiac Nautic', 'France', 'zodiac_nzo_760', 'N-ZO 760 Open (2020+)', 'rib', 2020, 2026, 'Mercury Verado 250HP outboard', 250, 3432, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'zodiac_nautic', 'Zodiac Nautic', 'France', 'zodiac_hurricane_760', 'Hurricane 760 (2021+)', 'rib', 2021, 2026, 'Yamaha F350 350HP quad', 350, 5330, 'gasoline', 'boat', 'Europe'),
  -- Brig Navigator (UA/EU RIB)
  (gen_random_uuid(), 'brig_navigator', 'Brig Navigator', 'Ukraine', 'brig_navigator_570', 'Navigator 570 (2018+)', 'rib', 2018, 2026, 'Honda 100HP BF100 outboard', 100, 1496, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'brig_navigator', 'Brig Navigator', 'Ukraine', 'brig_navigator_610', 'Navigator 610 (2018+)', 'rib', 2018, 2026, 'Yamaha F200 200HP outboard', 200, 3350, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'brig_navigator', 'Brig Navigator', 'Ukraine', 'brig_navigator_710', 'Navigator 710 (2019+)', 'rib', 2019, 2026, 'Yamaha F250 250HP outboard', 250, 4169, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'brig_navigator', 'Brig Navigator', 'Ukraine', 'brig_eagle_780', 'Eagle 780 (2020+)', 'rib', 2020, 2026, 'Yamaha F300 300HP outboard', 300, 4169, 'gasoline', 'boat', 'Europe'),
  -- Quicksilver Activ (Mercury marine brand)
  (gen_random_uuid(), 'quicksilver_activ', 'Quicksilver Activ', 'France', 'qs_activ_555_open', 'Activ 555 Open (2018+)', 'motorboat', 2018, 2026, 'Mercury FourStroke 115HP outboard', 115, 2064, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'quicksilver_activ', 'Quicksilver Activ', 'France', 'qs_activ_605_sundeck', 'Activ 605 Sundeck (2018+)', 'motorboat', 2018, 2026, 'Mercury FourStroke 150HP outboard', 150, 2785, 'gasoline', 'boat', 'Europe'),
  (gen_random_uuid(), 'quicksilver_activ', 'Quicksilver Activ', 'France', 'qs_activ_705_cruiser', 'Activ 705 Cruiser (2019+)', 'motorboat', 2019, 2026, 'Mercury FourStroke 225HP outboard', 225, 3432, 'gasoline', 'boat', 'Europe'),
  -- Riva extra models (Ferretti Group)
  (gen_random_uuid(), 'riva', 'Riva (Ferretti Group)', 'Italy', 'riva_aquariva_super', 'Aquariva Super (2012+)', 'motorboat', 2012, 2026, 'Volvo Penta D4-300 300hp IPS Twin', 600, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'riva', 'Riva (Ferretti Group)', 'Italy', 'riva_rivale_56', 'Rivale 56 (2021+)', 'motorboat', 2021, 2026, 'Volvo Penta IPS 800 600hp Twin', 1200, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'riva', 'Riva (Ferretti Group)', 'Italy', 'riva_corsaro_super', 'Corsaro Super 44 (2020+)', 'sailboat', 2020, 2026, 'Yanmar 4JH57 57hp Saildrive', 57, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'riva', 'Riva (Ferretti Group)', 'Italy', 'riva_el_iseo', 'El-Iseo Electric (2022+)', 'motorboat', 2022, 2026, 'Torqeedo Deep Blue 100kWh 120hp electric', 120, NULL, 'electric', 'boat', 'Europe'),
  -- Ferretti extra models
  (gen_random_uuid(), 'ferretti', 'Ferretti Yachts', 'Italy', 'ferretti_780', 'Ferretti 780 (2019+)', 'yacht', 2019, 2026, 'MAN V12 1000hp Twin Shaft Drive', 2000, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'ferretti', 'Ferretti Yachts', 'Italy', 'ferretti_920', 'Ferretti 920 (2021+)', 'superyacht', 2021, 2026, 'MTU 12V 2000 M96L 2200hp Twin', 2200, NULL, 'diesel', 'boat', 'Global'),
  (gen_random_uuid(), 'ferretti', 'Ferretti Yachts', 'Italy', 'ferretti_1000', 'Ferretti 1000 (2022+)', 'superyacht', 2022, 2026, 'MTU 16V 2000 M93 2600hp Twin', 2600, NULL, 'diesel', 'boat', 'Global'),
  -- Azimut extra models
  (gen_random_uuid(), 'azimut', 'Azimut Yachts', 'Italy', 'azimut_40', 'Azimut 40 (2018+)', 'yacht', 2018, 2026, 'Volvo Penta IPS 600 435hp Twin', 870, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'azimut', 'Azimut Yachts', 'Italy', 'azimut_53', 'Azimut 53 (2019+)', 'yacht', 2019, 2026, 'Volvo Penta IPS 800 600hp Twin', 1200, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'azimut', 'Azimut Yachts', 'Italy', 'azimut_68', 'Azimut 68 (2019+)', 'yacht', 2019, 2026, 'MAN V12 1000hp Twin Shaft Drive', 2000, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'azimut', 'Azimut Yachts', 'Italy', 'azimut_fly_54', 'Azimut Fly 54 (2020+)', 'yacht', 2020, 2026, 'Volvo Penta IPS 800 600hp Twin', 1200, NULL, 'diesel', 'boat', 'Europe'),
  -- Bavaria Yachts (DE sailboats)
  (gen_random_uuid(), 'bavaria_yachts', 'Bavaria Yachts', 'Germany', 'bavaria_c42', 'Bavaria C42 (2018+)', 'sailboat', 2018, 2026, 'Volvo Penta D2-40 40hp Saildrive', 40, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'bavaria_yachts', 'Bavaria Yachts', 'Germany', 'bavaria_c42', 'Bavaria C42 (2018+)', 'sailboat', 2018, 2026, 'Oceanvolt AXC 15kW Electric 20hp', 20, NULL, 'electric', 'boat', 'Europe'),
  (gen_random_uuid(), 'bavaria_yachts', 'Bavaria Yachts', 'Germany', 'bavaria_c57', 'Bavaria C57 (2019+)', 'sailboat', 2019, 2026, 'Yanmar 4JH80 75hp Saildrive ocean', 75, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'bavaria_yachts', 'Bavaria Yachts', 'Germany', 'bavaria_vision_42', 'Vision 42 (2019+)', 'motorboat', 2019, 2026, 'Volvo Penta D6-380 380hp IPS Twin', 760, NULL, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'bavaria_yachts', 'Bavaria Yachts', 'Germany', 'bavaria_nautitech_46', 'Nautitech 46 Open Catamaran', 'catamaran', 2018, 2026, 'Yanmar 3JH5E 39hp x2 Saildrive', 78, NULL, 'diesel', 'boat', 'Europe'),
  -- Lagoon (additional Catamarani)
  (gen_random_uuid(), 'lagoon', 'Lagoon Catamarans', 'France', 'lagoon_46', 'Lagoon 46 Catamaran (2018+)', 'catamaran', 2018, 2026, 'Oceanvolt AXC 15kW x2 Electric hybrid', 40, NULL, 'electric', 'boat', 'Global'),
  (gen_random_uuid(), 'lagoon', 'Lagoon Catamarans', 'France', 'lagoon_51', 'Lagoon 51 Catamaran (2017+)', 'catamaran', 2017, 2026, 'Yanmar 4JH57 57hp x2 Saildrive', 114, NULL, 'diesel', 'boat', 'Global'),
  (gen_random_uuid(), 'lagoon', 'Lagoon Catamarans', 'France', 'lagoon_55', 'Lagoon 55 Catamaran (2019+)', 'catamaran', 2019, 2026, 'Yanmar 4JH80 75hp x2 Saildrive offshore', 150, NULL, 'diesel', 'boat', 'Global'),
  -- Linssen & Dutch river cruisers
  (gen_random_uuid(), 'linssen', 'Linssen', 'Netherlands', 'linssen_linssen_grand_sturdy_30_0', 'Grand Sturdy 30.0 AC (2018+)', 'motorboat', 2018, 2026, 'Volvo Penta D2-60cv diesel river cruiser', 60, 1388, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'linssen', 'Linssen', 'Netherlands', 'linssen_linssen_40_9', 'Linssen 40.9 AC (2018+)', 'motorboat', 2018, 2026, 'Volvo Penta D2-60cv diesel twin', 120, 1388, 'diesel', 'boat', 'Europe'),
  -- Valkkruiser (NL luxury cruiser)
  (gen_random_uuid(), 'valkkruiser', 'Valkkruiser', 'Netherlands', 'valkkruiser_valkkruiser_42', 'Valkkruiser 42 Royal (2018+)', 'motorboat', 2018, 2026, 'Volvo Penta D2-60cv diesel flybridge', 60, 1388, 'diesel', 'boat', 'Europe'),
  -- Hanse (DE sailing yachts)
  (gen_random_uuid(), 'hanse', 'Hanse', 'Germany', 'hanse_hanse_315', 'Hanse 315 (2018+)', 'sailboat', 2018, 2026, 'Yanmar 2QM20 20hp Saildrive auxiliary', 20, 1064, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'hanse', 'Hanse', 'Germany', 'hanse_hanse_458', 'Hanse 458 Luxury (2020+)', 'sailboat', 2020, 2026, 'Yanmar 4JH4-TE 54hp Saildrive blue water', 54, 1995, 'diesel', 'boat', 'Europe'),
  -- Hallberg-Rassy (SE bluewater)
  (gen_random_uuid(), 'hallberg_rassy', 'Hallberg-Rassy', 'Sweden', 'hallberg_rassy_hr_310', 'HR 310 (2018+)', 'sailboat', 2018, 2026, 'Yanmar 3GM30 29hp Saildrive bluewater', 29, 1064, 'diesel', 'boat', 'Europe'),
  (gen_random_uuid(), 'hallberg_rassy', 'Hallberg-Rassy', 'Sweden', 'hallberg_rassy_hr_44', 'HR 44 Premium (2019+)', 'sailboat', 2019, 2026, 'Yanmar 4JH57 57hp Saildrive premium', 57, 1995, 'diesel', 'boat', 'Europe'),
  -- Bavaria Coupe 45 (motorboat)
  (gen_random_uuid(), 'bavaria_yacht', 'Bavaria Yachts', 'Germany', 'bavaria_c45', 'Bavaria C45 Coupe (2019+)', 'motorboat', 2019, 2026, 'Volvo Penta 2x D6 400cv IPS Twin', 800, NULL, 'diesel', 'boat', 'Europe')
ON CONFLICT DO NOTHING;

-- Fine: 82 motorizzazioni — batch 10 BARCHE vol.2
-- Totale atteso: 13,083 + 82 = 13,165

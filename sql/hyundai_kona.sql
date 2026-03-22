-- Hyundai Kona Electric — tutte le generazioni
-- Da eseguire nel SQL Editor di Supabase (progetto CarSpecs)

INSERT INTO vehicle_specs
  (id, brand_id, brand_name, brand_country, model_id, model_name, body_type, year_start, year_end, engine_name, hp, cc, fuel_type, vehicle_type, region)
VALUES
  -- Kona Electric 1a gen (OS, 2018-2022)
  (gen_random_uuid(), 'hyundai', 'Hyundai', 'South Korea', 'kona_electric', 'Kona Electric', 'suv', 2018, 2022, 'Electric 39.2kWh 136cv', 136, NULL, 'electric', 'car', 'South Korea'),
  (gen_random_uuid(), 'hyundai', 'Hyundai', 'South Korea', 'kona_electric', 'Kona Electric', 'suv', 2018, 2022, 'Electric 64kWh 204cv', 204, NULL, 'electric', 'car', 'South Korea'),

  -- Kona Electric 2a gen (SX2, 2023+)
  (gen_random_uuid(), 'hyundai', 'Hyundai', 'South Korea', 'kona_electric', 'Kona Electric', 'suv', 2023, NULL, 'Electric 48.4kWh FWD 156cv', 156, NULL, 'electric', 'car', 'South Korea'),
  (gen_random_uuid(), 'hyundai', 'Hyundai', 'South Korea', 'kona_electric', 'Kona Electric', 'suv', 2023, NULL, 'Electric 65.4kWh FWD 218cv', 218, NULL, 'electric', 'car', 'South Korea'),
  (gen_random_uuid(), 'hyundai', 'Hyundai', 'South Korea', 'kona_electric', 'Kona Electric', 'suv', 2024, NULL, 'Electric 65.4kWh AWD 218cv', 218, NULL, 'electric', 'car', 'South Korea')
ON CONFLICT DO NOTHING;

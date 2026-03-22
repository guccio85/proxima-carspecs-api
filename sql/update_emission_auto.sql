-- update_emission_auto.sql
-- Auto-popola emission_eu e emission_us basandosi su year_start + vehicle_type + region
-- ESCLUSI: boat, airplane, aircraft (nessuno standard Euro/Tier applicabile)
-- ESEGUIRE DOPO migration_emission_fields.sql

-- ============================================================
-- ELECTRIC / HYBRID → zero-emission (tutti i veicoli terrestri)
-- ============================================================
UPDATE vehicle_specs SET
  emission_eu = 'zero-emission',
  emission_us = 'zero-emission'
WHERE fuel_type IN ('electric', 'hybrid', 'hydrogen')
  AND vehicle_type NOT IN ('boat', 'airplane', 'aircraft');

-- ============================================================
-- AUTOMOBILI (car, historic_car, supercar, racing, camper)
-- Standard Euro EU / JP / KR / resto mondo che segue EU
-- ============================================================
UPDATE vehicle_specs SET emission_eu =
  CASE
    WHEN year_start < 1993  THEN 'pre-euro'
    WHEN year_start < 1997  THEN 'euro1'
    WHEN year_start < 2001  THEN 'euro2'
    WHEN year_start < 2006  THEN 'euro3'
    WHEN year_start < 2011  THEN 'euro4'
    WHEN year_start < 2015  THEN 'euro5'
    WHEN year_start < 2021  THEN 'euro6'
    ELSE                         'euro6d'
  END
WHERE vehicle_type IN ('car', 'historic_car', 'supercar', 'racing', 'camper')
  AND fuel_type NOT IN ('electric', 'hybrid', 'hydrogen')
  AND region NOT IN ('US');

-- ============================================================
-- MOTO, SCOOTER, MOPED (standard Euro moto — intro ritardata)
-- ============================================================
UPDATE vehicle_specs SET emission_eu =
  CASE
    WHEN year_start < 1999  THEN 'pre-euro'
    WHEN year_start < 2003  THEN 'euro1'
    WHEN year_start < 2007  THEN 'euro2'
    WHEN year_start < 2016  THEN 'euro3'
    WHEN year_start < 2021  THEN 'euro4'
    ELSE                         'euro5'
  END
WHERE vehicle_type IN ('motorcycle', 'scooter', 'moped', 'motocross')
  AND fuel_type NOT IN ('electric', 'hybrid', 'hydrogen')
  AND region NOT IN ('US');

-- ============================================================
-- TRUCKS (standard Euro heavy-duty — intro anticipata)
-- ============================================================
UPDATE vehicle_specs SET emission_eu =
  CASE
    WHEN year_start < 1993  THEN 'pre-euro'
    WHEN year_start < 1996  THEN 'euro1'
    WHEN year_start < 2001  THEN 'euro2'
    WHEN year_start < 2006  THEN 'euro3'
    WHEN year_start < 2009  THEN 'euro4'
    WHEN year_start < 2014  THEN 'euro5'
    WHEN year_start < 2021  THEN 'euro6'
    ELSE                         'euro6d'
  END
WHERE vehicle_type IN ('truck', 'van')
  AND fuel_type NOT IN ('electric', 'hybrid', 'hydrogen')
  AND region NOT IN ('US');

-- ============================================================
-- TRATTORI / ATV / SNOW (standard Stage/Tier off-road EU)
-- ============================================================
UPDATE vehicle_specs SET emission_eu =
  CASE
    WHEN year_start < 1999  THEN 'pre-euro'
    WHEN year_start < 2004  THEN 'stage1'
    WHEN year_start < 2008  THEN 'stage2'
    WHEN year_start < 2012  THEN 'stage3a'
    WHEN year_start < 2019  THEN 'stage4'
    ELSE                         'stage5'
  END
WHERE vehicle_type IN ('tractor', 'atv', 'snowmobile', 'machinery')
  AND fuel_type NOT IN ('electric', 'hybrid', 'hydrogen')
  AND region NOT IN ('US');

-- ============================================================
-- US REGION → emission_us + emission_eu equivalente
-- ============================================================

-- Auto US
UPDATE vehicle_specs SET
  emission_us = CASE
    WHEN year_start < 1994  THEN 'pre-tier'
    WHEN year_start < 2004  THEN 'tier1'
    WHEN year_start < 2017  THEN 'tier2'
    ELSE                         'tier3'
  END,
  emission_eu = CASE
    WHEN year_start < 1994  THEN 'pre-euro'
    WHEN year_start < 2004  THEN 'euro3'   -- Tier1 ≈ Euro3
    WHEN year_start < 2017  THEN 'euro5'   -- Tier2 ≈ Euro5
    ELSE                         'euro6'   -- Tier3 ≈ Euro6
  END
WHERE vehicle_type IN ('car', 'historic_car', 'supercar', 'racing', 'camper', 'truck', 'van')
  AND fuel_type NOT IN ('electric', 'hybrid', 'hydrogen')
  AND region = 'US';

-- Moto US
UPDATE vehicle_specs SET
  emission_us = CASE
    WHEN year_start < 2006  THEN 'pre-tier'
    WHEN year_start < 2010  THEN 'tier1'
    ELSE                         'tier2'
  END,
  emission_eu = CASE
    WHEN year_start < 2006  THEN 'pre-euro'
    WHEN year_start < 2010  THEN 'euro2'
    ELSE                         'euro3'
  END
WHERE vehicle_type IN ('motorcycle', 'scooter', 'moped', 'motocross')
  AND fuel_type NOT IN ('electric', 'hybrid', 'hydrogen')
  AND region = 'US';

-- ============================================================
-- VERIFICA RAPIDA (eseguire separatamente per controllare)
-- ============================================================
-- SELECT vehicle_type, region, emission_eu, emission_us, COUNT(*)
-- FROM vehicle_specs
-- GROUP BY vehicle_type, region, emission_eu, emission_us
-- ORDER BY vehicle_type, region, emission_eu;

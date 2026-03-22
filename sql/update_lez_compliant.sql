-- update_lez_compliant.sql
-- Popola is_low_emission_zone_compliant basandosi su emission_eu + vehicle_type
-- ESEGUIRE DOPO update_emission_auto.sql (che deve aver già popolato emission_eu)
--
-- Logica LEZ (Low Emission Zone) europea:
--   Auto/van/truck/camper  → Euro 6+ (soglia ULEZ Londra, ZTL Milano, ZFE Parigi 2025)
--   Moto/scooter/moped     → Euro 3+ (la maggior parte delle LEZ esentano o usano Euro 3)
--   Zero-emission          → sempre TRUE (qualsiasi vehicle_type terrestre)
--   Trattori/ATV/machinery → NULL (generalmente esenti da LEZ)
--   Boat/airplane/aircraft → NULL (LEZ non applicabile)
--   emission_eu NULL       → NULL (non determinabile)

-- ============================================================
-- AUTO, CAMPER, HISTORIC, SUPERCAR, RACING → soglia Euro 6
-- ============================================================
UPDATE vehicle_specs
SET is_low_emission_zone_compliant =
  CASE
    WHEN emission_eu IN ('zero-emission')                                          THEN TRUE
    WHEN emission_eu IN ('euro6', 'euro6c', 'euro6d-temp', 'euro6d')              THEN TRUE
    WHEN emission_eu IN ('pre-euro','euro1','euro2','euro3','euro4','euro5')       THEN FALSE
    ELSE NULL  -- emission_eu IS NULL
  END
WHERE vehicle_type IN ('car', 'historic_car', 'supercar', 'racing', 'camper');

-- ============================================================
-- TRUCK, VAN → soglia Euro 6 (heavy-duty LEZ stessa soglia auto)
-- ============================================================
UPDATE vehicle_specs
SET is_low_emission_zone_compliant =
  CASE
    WHEN emission_eu IN ('zero-emission')                                          THEN TRUE
    WHEN emission_eu IN ('euro6', 'euro6c', 'euro6d-temp', 'euro6d')              THEN TRUE
    WHEN emission_eu IN ('pre-euro','euro1','euro2','euro3','euro4','euro5')       THEN FALSE
    ELSE NULL
  END
WHERE vehicle_type IN ('truck', 'van');

-- ============================================================
-- MOTO, SCOOTER, MOPED, MOTOCROSS → soglia Euro 3
-- (La maggior parte delle LEZ europee esentano le moto o usano Euro 3 come soglia)
-- ============================================================
UPDATE vehicle_specs
SET is_low_emission_zone_compliant =
  CASE
    WHEN emission_eu IN ('zero-emission')                                          THEN TRUE
    WHEN emission_eu IN ('euro3','euro4','euro5','euro6','euro6c','euro6d','euro6d-temp') THEN TRUE
    WHEN emission_eu IN ('pre-euro','euro1','euro2')                              THEN FALSE
    ELSE NULL
  END
WHERE vehicle_type IN ('motorcycle', 'scooter', 'moped', 'motocross');

-- ============================================================
-- TRATTORI / ATV / SNOWMOBILE / MACHINERY → NULL
-- Generalmente esenti da LEZ (veicoli off-road / agricoli)
-- ============================================================
UPDATE vehicle_specs
SET is_low_emission_zone_compliant = NULL
WHERE vehicle_type IN ('tractor', 'atv', 'snowmobile', 'machinery');

-- ============================================================
-- BOAT / AIRPLANE / AIRCRAFT → NULL (LEZ non applicabile)
-- ============================================================
UPDATE vehicle_specs
SET is_low_emission_zone_compliant = NULL
WHERE vehicle_type IN ('boat', 'airplane', 'aircraft');

-- ============================================================
-- VERIFICA
-- ============================================================
-- SELECT vehicle_type, emission_eu, is_low_emission_zone_compliant, COUNT(*)
-- FROM vehicle_specs
-- WHERE vehicle_type IN ('car','motorcycle','truck','tractor','boat')
-- GROUP BY vehicle_type, emission_eu, is_low_emission_zone_compliant
-- ORDER BY vehicle_type, emission_eu;

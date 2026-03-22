-- migration_emission_fields.sql
-- Aggiunge campi emissioni, consumo e velocità massima a vehicle_specs
-- Eseguire in Supabase SQL Editor

ALTER TABLE vehicle_specs
  ADD COLUMN IF NOT EXISTS emission_eu       VARCHAR(20)   DEFAULT NULL,
  ADD COLUMN IF NOT EXISTS emission_us       VARCHAR(20)   DEFAULT NULL,
  ADD COLUMN IF NOT EXISTS consumption       DECIMAL(5,2)  DEFAULT NULL,
  ADD COLUMN IF NOT EXISTS consumption_unit  VARCHAR(10)   DEFAULT NULL,
  ADD COLUMN IF NOT EXISTS max_speed         SMALLINT      DEFAULT NULL,
  ADD COLUMN IF NOT EXISTS speed_unit        VARCHAR(6)    DEFAULT NULL,
  -- Campi aviazione (solo airplane / aircraft)
  ADD COLUMN IF NOT EXISTS icao_type                      VARCHAR(4)    DEFAULT NULL,
  ADD COLUMN IF NOT EXISTS iata_type                      VARCHAR(3)    DEFAULT NULL,
  ADD COLUMN IF NOT EXISTS mtow_kg                        INTEGER       DEFAULT NULL,
  ADD COLUMN IF NOT EXISTS is_low_emission_zone_compliant BOOLEAN       DEFAULT NULL;

-- emission_eu   : 'pre-euro','euro1','euro2','euro3','euro4','euro5','euro6','euro6d','zero-emission'
-- emission_us   : 'pre-tier','tier1','tier2','tier3','zero-emission'
-- consumption   : number (es. 15.2)
-- consumption_unit: 'km/l','l/100km','mpg','l/h','nm/l' (nodi/litro per barche)
-- max_speed     : numero intero
-- speed_unit    : 'km/h','mph','knots'
-- icao_type     : codice tipo ICAO 4 lettere (es. 'B738','A320','C172','PA28') — solo airplane/aircraft
-- iata_type     : codice tipo IATA 3 lettere (es. '738','320','172')           — solo airplane/aircraft
-- mtow_kg       : Maximum Take-Off Weight in kg (INTEGER). NULL per non-aircraft. Droni sub-1kg → NULL

-- Commenti per documentazione API
COMMENT ON COLUMN vehicle_specs.emission_eu      IS 'Standard emissioni europeo (euro1-euro6d). NULL per barche/aerei.';
COMMENT ON COLUMN vehicle_specs.emission_us      IS 'Standard emissioni USA (tier1-tier3). NULL per veicoli non-US e barche/aerei.';
COMMENT ON COLUMN vehicle_specs.consumption      IS 'Consumo carburante. Unità indicata in consumption_unit.';
COMMENT ON COLUMN vehicle_specs.consumption_unit IS 'Unità consumo: km/l, l/100km, mpg, l/h, nm/l';
COMMENT ON COLUMN vehicle_specs.max_speed        IS 'Velocità massima dichiarata. Unità indicata in speed_unit.';
COMMENT ON COLUMN vehicle_specs.speed_unit       IS 'Unità velocità: km/h, mph, knots';
COMMENT ON COLUMN vehicle_specs.icao_type        IS 'Codice tipo aeromobile ICAO Doc 8643 (4 car). Es: B738, A320, C172. Solo airplane/aircraft.';
COMMENT ON COLUMN vehicle_specs.iata_type        IS 'Codice tipo aeromobile IATA (3 car). Es: 738, 320, 172. Solo airplane/aircraft.';
COMMENT ON COLUMN vehicle_specs.mtow_kg          IS 'Maximum Take-Off Weight in kg (dato certificato FAA/EASA). Solo airplane/aircraft/drone. NULL per veicoli terrestri/navali.';
COMMENT ON COLUMN vehicle_specs.is_low_emission_zone_compliant IS 'TRUE se il veicolo soddisfa i requisiti LEZ/ZTL più restrittivi EU (Euro6+ auto/truck, Euro3+ moto). NULL per mezzi non terrestri, trattori, ATV.';

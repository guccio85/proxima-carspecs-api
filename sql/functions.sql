-- ============================================================
-- Proxima CarSpecs — SQL Functions
-- Da eseguire su Supabase (proxima-carspecs) dopo lo schema
-- ============================================================

-- -----------------------------------------------
-- list_brands(vehicle_type?)
-- GET /api/brands?vehicle_type=car
-- -----------------------------------------------
CREATE OR REPLACE FUNCTION list_brands(p_vehicle_type TEXT DEFAULT NULL)
RETURNS TABLE(
  brand_id      TEXT,
  brand_name    TEXT,
  brand_country TEXT,
  engine_count  BIGINT
) AS $$
  SELECT
    brand_id,
    brand_name,
    MAX(brand_country) AS brand_country,
    COUNT(*)           AS engine_count
  FROM vehicle_specs
  WHERE (p_vehicle_type IS NULL OR vehicle_type = p_vehicle_type)
  GROUP BY brand_id, brand_name
  ORDER BY brand_name;
$$ LANGUAGE sql STABLE SECURITY DEFINER;

-- -----------------------------------------------
-- list_models(brand_id, vehicle_type?)
-- GET /api/models?brand=alfa_romeo
-- -----------------------------------------------
CREATE OR REPLACE FUNCTION list_models(
  p_brand_id    TEXT,
  p_vehicle_type TEXT DEFAULT NULL
)
RETURNS TABLE(
  model_id     TEXT,
  model_name   TEXT,
  body_type    TEXT,
  year_start   INTEGER,
  year_end     INTEGER,
  engine_count BIGINT
) AS $$
  SELECT
    model_id,
    model_name,
    MAX(body_type)   AS body_type,
    MIN(year_start)  AS year_start,
    MAX(year_end)    AS year_end,
    COUNT(*)         AS engine_count
  FROM vehicle_specs
  WHERE brand_id = p_brand_id
    AND (p_vehicle_type IS NULL OR vehicle_type = p_vehicle_type)
  GROUP BY model_id, model_name
  ORDER BY model_name;
$$ LANGUAGE sql STABLE SECURITY DEFINER;

-- -----------------------------------------------
-- search_vehicles(q, vehicle_type?, limit?)
-- GET /api/search?q=giulia+200
-- -----------------------------------------------
CREATE OR REPLACE FUNCTION search_vehicles(
  q              TEXT,
  p_vehicle_type TEXT DEFAULT NULL,
  p_limit        INTEGER DEFAULT 20
)
RETURNS TABLE(
  id           UUID,
  brand_id     TEXT,
  brand_name   TEXT,
  model_id     TEXT,
  model_name   TEXT,
  engine_name  TEXT,
  hp           INTEGER,
  cc           INTEGER,
  fuel_type    TEXT,
  vehicle_type TEXT,
  year_start   INTEGER,
  year_end     INTEGER,
  body_type    TEXT
) AS $$
  SELECT
    id, brand_id, brand_name, model_id, model_name,
    engine_name, hp, cc, fuel_type, vehicle_type,
    year_start, year_end, body_type
  FROM vehicle_specs
  WHERE
    to_tsvector('simple', brand_name || ' ' || model_name || ' ' || engine_name)
    @@ plainto_tsquery('simple', q)
    AND (p_vehicle_type IS NULL OR vehicle_type = p_vehicle_type)
  ORDER BY
    ts_rank(
      to_tsvector('simple', brand_name || ' ' || model_name || ' ' || engine_name),
      plainto_tsquery('simple', q)
    ) DESC
  LIMIT LEAST(p_limit, 100);
$$ LANGUAGE sql STABLE SECURITY DEFINER;

-- Grant public access (anon role)
GRANT EXECUTE ON FUNCTION list_brands(TEXT)       TO anon;
GRANT EXECUTE ON FUNCTION list_models(TEXT, TEXT) TO anon;
GRANT EXECUTE ON FUNCTION search_vehicles(TEXT, TEXT, INTEGER) TO anon;

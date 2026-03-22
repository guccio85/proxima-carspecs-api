-- ============================================================
-- Proxima CarSpecs — Duplicate Audit Script
-- Eseguire nel SQL Editor di Supabase
-- ============================================================

-- -----------------------------------------------
-- 1. CONTEGGIO TOTALE
-- -----------------------------------------------
SELECT COUNT(*) AS total_rows FROM vehicle_specs;

-- -----------------------------------------------
-- 2. DUPLICATI ESATTI: stessa tripla (brand_id, model_id, engine_name)
--    Questi sono i veri duplicati da eliminare
-- -----------------------------------------------
SELECT
  brand_id,
  model_id,
  engine_name,
  COUNT(*) AS occorrenze
FROM vehicle_specs
GROUP BY brand_id, model_id, engine_name
HAVING COUNT(*) > 1
ORDER BY occorrenze DESC, brand_id, model_id
LIMIT 50;

-- -----------------------------------------------
-- 3. QUANTE RIGHE SONO DUPLICATI ESATTI
-- -----------------------------------------------
SELECT
  COUNT(*) AS righe_duplicate,
  SUM(occorrenze - 1) AS righe_extra_da_eliminare
FROM (
  SELECT COUNT(*) AS occorrenze
  FROM vehicle_specs
  GROUP BY brand_id, model_id, engine_name
  HAVING COUNT(*) > 1
) sub;

-- -----------------------------------------------
-- 4. DUPLICATI PER BRAND: quali brand hanno più duplicati
-- -----------------------------------------------
SELECT
  brand_id,
  brand_name,
  COUNT(*) AS tot_righe,
  COUNT(*) - COUNT(DISTINCT model_id || '||' || engine_name) AS duplicati_stimati
FROM vehicle_specs
GROUP BY brand_id, brand_name
HAVING COUNT(*) - COUNT(DISTINCT model_id || '||' || engine_name) > 0
ORDER BY duplicati_stimati DESC;

-- -----------------------------------------------
-- 5. PREVIEW RIGHE DUPLICATE (prime 20)
--    Mostra tutte le righe con duplicati per decidere quali tenere
-- -----------------------------------------------
SELECT
  id,
  brand_id,
  brand_name,
  model_id,
  model_name,
  engine_name,
  hp,
  cc,
  vehicle_type,
  created_at
FROM vehicle_specs
WHERE (brand_id, model_id, engine_name) IN (
  SELECT brand_id, model_id, engine_name
  FROM vehicle_specs
  GROUP BY brand_id, model_id, engine_name
  HAVING COUNT(*) > 1
)
ORDER BY brand_id, model_id, engine_name, created_at
LIMIT 40;

-- -----------------------------------------------
-- 6. DELETE DUPLICATI — mantiene 1 riga per tripla (quella con id minore)
--    ⚠️  DECOMMENTARE SOLO SE SICURI — Prima esegui le query sopra!
-- -----------------------------------------------
/*
DELETE FROM vehicle_specs
WHERE id IN (
  SELECT id FROM (
    SELECT
      id,
      ROW_NUMBER() OVER (
        PARTITION BY brand_id, model_id, engine_name
        ORDER BY created_at ASC, id ASC
      ) AS rn
    FROM vehicle_specs
  ) ranked
  WHERE rn > 1
);
*/

-- -----------------------------------------------
-- 7. VERIFICA FINALE DOPO DELETE (eseguire dopo il DELETE)
-- -----------------------------------------------
-- SELECT COUNT(*) AS total_dopo_cleanup FROM vehicle_specs;

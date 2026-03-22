import type { VercelRequest, VercelResponse } from '@vercel/node';
import { getSupabase } from './_lib/supabase';

/**
 * GET /api/engines
 *
 * Query params:
 *   brand      (required) — brand_id, es. "alfa_romeo"
 *   model      (required) — model_id, es. "giulia_952"
 *   year       (optional) — filtra motorizzazioni prodotte in quell'anno
 *   fuel_type  (optional) — "gasoline" | "diesel" | "electric" | "hybrid" | ...
 *
 * Response: [{ id, engine_name, hp, cc, fuel_type, year_start, year_end, body_type,
 *              emission_eu, emission_us, is_low_emission_zone_compliant,
 *              icao_type, iata_type, mtow_kg }]
 */
export default async function handler(req: VercelRequest, res: VercelResponse) {
  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'GET') return res.status(405).json({ error: 'Method not allowed' });

  const { brand, model, year, fuel_type } = req.query;
  if (!brand) return res.status(400).json({ error: 'Missing required param: brand' });
  if (!model) return res.status(400).json({ error: 'Missing required param: model' });

  const supabase = getSupabase();
  let query = supabase
    .from('vehicle_specs')
    .select('id, engine_name, hp, cc, fuel_type, year_start, year_end, body_type, emission_eu, emission_us, is_low_emission_zone_compliant, icao_type, iata_type, mtow_kg')
    .eq('brand_id', brand as string)
    .eq('model_id', model as string)
    .order('year_start', { ascending: true })
    .order('hp', { ascending: true });

  if (year) {
    const y = parseInt(year as string, 10);
    if (isNaN(y) || y < 1900 || y > 2100) {
      return res.status(400).json({ error: 'Invalid year' });
    }
    query = query.lte('year_start', y).or(`year_end.is.null,year_end.gte.${y}`);
  }

  if (fuel_type) {
    query = query.eq('fuel_type', fuel_type as string);
  }

  const { data, error } = await query;
  if (error) return res.status(500).json({ error: error.message });

  res.setHeader('Cache-Control', 's-maxage=3600, stale-while-revalidate=86400');
  return res.status(200).json(data);
}

import type { VercelRequest, VercelResponse } from '@vercel/node';
import { getSupabase } from './_lib/supabase';

/**
 * GET /api/search
 *
 * Query params:
 *   q                   (required) — testo libero, es. "giulia 200" o "BMW M3"
 *   vehicle_type        (optional) — "car" | "motorcycle" | "boat" | ...
 *   emission_eu         (optional) — "euro6" | "euro6d" | "euro5" | ... filtra per standard emissioni EU
 *   is_lez_compliant    (optional) — "true" | "false" — filtra veicoli conformi/non conformi a LEZ/ZTL
 *   limit               (optional) — default 20, max 100
 *
 * Response: [{ id, brand_id, brand_name, model_id, model_name, engine_name, hp, cc,
 *              fuel_type, vehicle_type, year_start, year_end, body_type,
 *              emission_eu, emission_us, is_low_emission_zone_compliant }]
 */
export default async function handler(req: VercelRequest, res: VercelResponse) {
  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'GET') return res.status(405).json({ error: 'Method not allowed' });

  const { q, vehicle_type, emission_eu, is_lez_compliant, limit = '20' } = req.query;
  if (!q || !(q as string).trim()) {
    return res.status(400).json({ error: 'Missing required param: q' });
  }

  const limitNum = Math.min(Math.max(parseInt(limit as string, 10) || 20, 1), 100);

  const supabase = getSupabase();
  let query = supabase
    .from('vehicle_specs')
    .select('id, brand_id, brand_name, model_id, model_name, engine_name, hp, cc, fuel_type, vehicle_type, year_start, year_end, body_type, emission_eu, emission_us, is_low_emission_zone_compliant')
    .or(`brand_name.ilike.%${(q as string).trim()}%,model_name.ilike.%${(q as string).trim()}%,engine_name.ilike.%${(q as string).trim()}%`)
    .limit(limitNum);

  if (vehicle_type)                      query = query.eq('vehicle_type', vehicle_type as string);
  if (emission_eu)                       query = query.eq('emission_eu', emission_eu as string);
  if (is_lez_compliant === 'true')       query = query.eq('is_low_emission_zone_compliant', true);
  if (is_lez_compliant === 'false')      query = query.eq('is_low_emission_zone_compliant', false);

  const { data, error } = await query;

  if (error) return res.status(500).json({ error: error.message });

  res.setHeader('Cache-Control', 's-maxage=300, stale-while-revalidate=3600');
  return res.status(200).json(data);
}

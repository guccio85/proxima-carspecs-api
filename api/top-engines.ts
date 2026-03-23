import type { VercelRequest, VercelResponse } from '@vercel/node';
import { getSupabase } from './_lib/supabase';

/**
 * GET /api/top-engines
 *
 * Returns the most powerful engine variants in the dataset.
 *
 * Query params:
 *   limit        (optional) — default 20, max 100
 *   vehicle_type (optional) — "car" | "motorcycle" | "truck" | "boat" | "airplane" | ...
 *   fuel_type    (optional) — "gasoline" | "diesel" | "electric" | "hybrid" | ...
 *   sort_by      (optional) — "hp" (default) | "cc"
 *
 * Response: [{ brand_id, brand_name, model_id, model_name, engine_name, hp, cc,
 *              fuel_type, vehicle_type, year_start, year_end }]
 */
export default async function handler(req: VercelRequest, res: VercelResponse) {
  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'GET') return res.status(405).json({ error: 'Method not allowed' });

  const { limit = '20', vehicle_type, fuel_type, sort_by = 'hp' } = req.query;

  const limitNum = Math.min(Math.max(parseInt(limit as string, 10) || 20, 1), 100);

  const sortCol = sort_by === 'cc' ? 'cc' : 'hp';

  const supabase = getSupabase();
  let query = supabase
    .from('vehicle_specs')
    .select('brand_id, brand_name, model_id, model_name, engine_name, hp, cc, fuel_type, vehicle_type, year_start, year_end')
    .not(sortCol, 'is', null)
    .gt(sortCol, 0)
    .order(sortCol, { ascending: false })
    .limit(limitNum);

  if (vehicle_type) query = query.eq('vehicle_type', vehicle_type as string);
  if (fuel_type)    query = query.eq('fuel_type', fuel_type as string);

  const { data, error } = await query;
  if (error) return res.status(500).json({ error: error.message });

  res.setHeader('Cache-Control', 's-maxage=3600, stale-while-revalidate=86400');
  return res.status(200).json(data);
}

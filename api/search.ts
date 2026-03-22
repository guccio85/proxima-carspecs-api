import type { VercelRequest, VercelResponse } from '@vercel/node';
import { getSupabase } from './_lib/supabase';

/**
 * GET /api/search
 *
 * Query params:
 *   q             (required) — testo libero, es. "giulia 200" o "BMW M3"
 *   vehicle_type  (optional) — "car" | "motorcycle" | "boat" | ...
 *   limit         (optional) — default 20, max 100
 *
 * Response: [{ id, brand_id, brand_name, model_id, model_name, engine_name, hp, cc, fuel_type, vehicle_type, year_start, year_end, body_type }]
 */
export default async function handler(req: VercelRequest, res: VercelResponse) {
  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'GET') return res.status(405).json({ error: 'Method not allowed' });

  const { q, vehicle_type, limit = '20' } = req.query;
  if (!q || !(q as string).trim()) {
    return res.status(400).json({ error: 'Missing required param: q' });
  }

  const limitNum = Math.min(Math.max(parseInt(limit as string, 10) || 20, 1), 100);

  const supabase = getSupabase();
  const { data, error } = await supabase.rpc('search_vehicles', {
    q:              (q as string).trim(),
    p_vehicle_type: (vehicle_type as string) || null,
    p_limit:        limitNum,
  });

  if (error) return res.status(500).json({ error: error.message });

  res.setHeader('Cache-Control', 's-maxage=300, stale-while-revalidate=3600');
  return res.status(200).json(data);
}

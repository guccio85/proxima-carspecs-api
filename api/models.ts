import type { VercelRequest, VercelResponse } from '@vercel/node';
import { getSupabase } from './_lib/supabase';

/**
 * GET /api/models
 *
 * Query params:
 *   brand         (required) — brand_id, es. "alfa_romeo"
 *   vehicle_type  (optional) — filtra per tipo veicolo
 *
 * Response: [{ model_id, model_name, body_type, year_start, year_end, engine_count }]
 */
export default async function handler(req: VercelRequest, res: VercelResponse) {
  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'GET') return res.status(405).json({ error: 'Method not allowed' });

  const { brand, vehicle_type } = req.query;
  if (!brand) return res.status(400).json({ error: 'Missing required param: brand' });

  const supabase = getSupabase();
  const { data, error } = await supabase.rpc('list_models', {
    p_brand_id:     brand as string,
    p_vehicle_type: (vehicle_type as string) || null,
  });

  if (error) return res.status(500).json({ error: error.message });

  res.setHeader('Cache-Control', 's-maxage=3600, stale-while-revalidate=86400');
  return res.status(200).json(data);
}

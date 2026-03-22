import type { VercelRequest, VercelResponse } from '@vercel/node';
import { getSupabase } from './_lib/supabase';

/**
 * GET /api/brands
 *
 * Query params:
 *   vehicle_type  (optional) — "car" | "motorcycle" | "boat" | "airplane" | "truck" | "tractor" | "camper" | "atv" | "machinery" | "racing" | "historic_car"
 *
 * Response: [{ brand_id, brand_name, brand_country, engine_count }]
 */
export default async function handler(req: VercelRequest, res: VercelResponse) {
  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'GET') return res.status(405).json({ error: 'Method not allowed' });

  const { vehicle_type } = req.query;

  const supabase = getSupabase();
  const { data, error } = await supabase.rpc('list_brands', {
    p_vehicle_type: (vehicle_type as string) || null,
  });

  if (error) return res.status(500).json({ error: error.message });

  res.setHeader('Cache-Control', 's-maxage=3600, stale-while-revalidate=86400');
  return res.status(200).json(data);
}

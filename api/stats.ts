import type { VercelRequest, VercelResponse } from '@vercel/node';
import { getSupabase } from './_lib/supabase';

/**
 * GET /api/stats
 *
 * Returns dataset statistics: total engines, total brands, total models,
 * and a breakdown by vehicle_type.
 *
 * No params required.
 */
export default async function handler(req: VercelRequest, res: VercelResponse) {
  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'GET') return res.status(405).json({ error: 'Method not allowed' });

  const supabase = getSupabase();

  const { data, error } = await supabase
    .from('vehicle_specs')
    .select('vehicle_type, brand_id, model_id', { count: 'exact' });

  if (error) return res.status(500).json({ error: error.message });

  const rows = data ?? [];

  const totalEngines = rows.length;
  const brands = new Set(rows.map((r) => r.brand_id));
  const models = new Set(rows.map((r) => `${r.brand_id}::${r.model_id}`));

  // breakdown by vehicle_type
  const byType: Record<string, number> = {};
  for (const row of rows) {
    const t = row.vehicle_type ?? 'unknown';
    byType[t] = (byType[t] ?? 0) + 1;
  }

  // sort by count desc
  const breakdown = Object.entries(byType)
    .sort((a, b) => b[1] - a[1])
    .map(([vehicle_type, engine_count]) => ({ vehicle_type, engine_count }));

  res.setHeader('Cache-Control', 's-maxage=3600, stale-while-revalidate=86400');
  return res.status(200).json({
    total_engines: totalEngines,
    total_brands: brands.size,
    total_models: models.size,
    by_vehicle_type: breakdown,
  });
}

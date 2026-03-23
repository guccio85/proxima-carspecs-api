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

  // Fetch total count
  const { count: totalEngines, error: countError } = await supabase
    .from('vehicle_specs')
    .select('*', { count: 'exact', head: true });

  if (countError) return res.status(500).json({ error: countError.message });

  // Fetch brands + models distinct counts
  const { data: brandData, error: brandError } = await supabase
    .from('vehicle_specs')
    .select('brand_id, model_id')
    .limit(50000);

  if (brandError) return res.status(500).json({ error: brandError.message });

  const rows = brandData ?? [];
  const brands = new Set(rows.map((r) => r.brand_id));
  const models = new Set(rows.map((r) => `${r.brand_id}::${r.model_id}`));

  // Fetch breakdown by vehicle_type
  const { data: typeData, error: typeError } = await supabase
    .from('vehicle_specs')
    .select('vehicle_type')
    .limit(50000);

  if (typeError) return res.status(500).json({ error: typeError.message });

  const byType: Record<string, number> = {};
  for (const row of typeData ?? []) {
    const t = row.vehicle_type ?? 'unknown';
    byType[t] = (byType[t] ?? 0) + 1;
  }

  // sort by count desc
  const breakdown = Object.entries(byType)
    .sort((a, b) => b[1] - a[1])
    .map(([vehicle_type, engine_count]) => ({ vehicle_type, engine_count }));

  res.setHeader('Cache-Control', 's-maxage=3600, stale-while-revalidate=86400');
  return res.status(200).json({
    total_engines: totalEngines ?? 0,
    total_brands: brands.size,
    total_models: models.size,
    by_vehicle_type: breakdown,
  });
}

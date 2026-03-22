import type { VercelRequest, VercelResponse } from '@vercel/node';
import { getSupabase } from './_lib/supabase';

/**
 * GET /api/vehicle-types
 *
 * Returns all distinct vehicle_type values with engine count for each.
 *
 * No params required.
 */
export default async function handler(req: VercelRequest, res: VercelResponse) {
  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'GET') return res.status(405).json({ error: 'Method not allowed' });

  const supabase = getSupabase();

  const { data, error } = await supabase
    .from('vehicle_specs')
    .select('vehicle_type');

  if (error) return res.status(500).json({ error: error.message });

  const counts: Record<string, number> = {};
  for (const row of data ?? []) {
    const t = row.vehicle_type ?? 'unknown';
    counts[t] = (counts[t] ?? 0) + 1;
  }

  const result = Object.entries(counts)
    .sort((a, b) => b[1] - a[1])
    .map(([vehicle_type, engine_count]) => ({ vehicle_type, engine_count }));

  res.setHeader('Cache-Control', 's-maxage=86400, stale-while-revalidate=604800');
  return res.status(200).json(result);
}

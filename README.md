# Proxima Vehicle Specs API

> REST API with **15,000+ engine specifications** — cars, motorcycles, trucks, boats, aircraft, and more.

[![Live API](https://img.shields.io/badge/API-Live-00d4ff?style=flat-square)](https://carspecs.proxima-suite.com)
[![RapidAPI](https://img.shields.io/badge/RapidAPI-Proxima%20Vehicle%20Specs-blue?style=flat-square)](https://rapidapi.com/proximasuite/api/proxima-vehicle-specs)
[![Vercel](https://img.shields.io/badge/Deploy-Vercel-black?style=flat-square)](https://vercel.com)

---

## Features

- **15,000+ engine variants** across 100+ brands and 1,000+ models
- **Vehicle types**: car, motorcycle, truck, van, boat, airplane, aircraft, tractor, atv, snowmobile, supercar, racing, historic, camper
- **EU emission standards**: pre-euro, euro1 through euro6d, zero-emission
- **US emission tiers**: tier1, tier2, tier3, zero-emission
- **LEZ/ULEZ compliance** flag — London ULEZ, Milan ZTL, Paris ZFE
- **Aircraft data**: ICAO/IATA type codes, MTOW (Maximum Take-Off Weight)

---

## Base URL

```
https://carspecs.proxima-suite.com
```

RapidAPI host: `proxima-vehicle-specs.p.rapidapi.com`

---

## Endpoints

### `GET /api/stats`
Returns total engines, brands, models, and a breakdown by vehicle type. **No params needed** — perfect first call.

```bash
curl 'https://carspecs.proxima-suite.com/api/stats'
```

```json
{
  "total_engines": 15011,
  "total_brands": 112,
  "total_models": 1034,
  "by_vehicle_type": [
    { "vehicle_type": "car", "engine_count": 9780 },
    { "vehicle_type": "motorcycle", "engine_count": 1316 }
  ]
}
```

---

### `GET /api/vehicle-types`
Returns all distinct vehicle types with engine count. **No params needed** — use the returned values as valid `vehicle_type` inputs for other endpoints.

```bash
curl 'https://carspecs.proxima-suite.com/api/vehicle-types'
```

---

### `GET /api/brands`
Returns all available brands, optionally filtered by vehicle type.

| Param | Required | Example |
|-------|----------|---------|
| `vehicle_type` | No | `car` |

```bash
curl 'https://carspecs.proxima-suite.com/api/brands?vehicle_type=car'
```

---

### `GET /api/models`
Returns all models for a brand, optionally filtered by vehicle type.

| Param | Required | Example |
|-------|----------|---------|
| `brand` | **Yes** | `toyota` |
| `vehicle_type` | No | `car` |

```bash
curl 'https://carspecs.proxima-suite.com/api/models?brand=toyota&vehicle_type=car'
```

---

### `GET /api/engines`
Returns all engine variants for a brand + model, with optional filters.

| Param | Required | Example |
|-------|----------|---------|
| `brand` | **Yes** | `toyota` |
| `model` | **Yes** | `corolla` |
| `year` | No | `2020` |
| `fuel_type` | No | `diesel` |

```bash
curl 'https://carspecs.proxima-suite.com/api/engines?brand=toyota&model=corolla&fuel_type=diesel'
```

**Response fields:** `id`, `engine_name`, `hp`, `cc`, `fuel_type`, `year_start`, `year_end`, `body_type`, `emission_eu`, `emission_us`, `is_low_emission_zone_compliant`, `icao_type`, `iata_type`, `mtow_kg`

---

### `GET /api/search`
Full-text search across brand, model, and engine name.

| Param | Required | Example |
|-------|----------|---------|
| `q` | **Yes** | `bmw diesel` |
| `vehicle_type` | No | `car` |
| `emission_eu` | No | `euro6` |
| `is_lez_compliant` | No | `true` / `false` |
| `limit` | No | `20` (default, max 100) |

```bash
# Find LEZ-compliant Euro 6 BMW diesel engines
curl 'https://carspecs.proxima-suite.com/api/search?q=bmw+diesel&emission_eu=euro6&is_lez_compliant=true'
```

---

## Use Cases

| Use Case | Endpoints |
|----------|-----------|
| Car configurator (brand → model → engine picker) | `/brands` → `/models` → `/engines` |
| Insurance premium calculation (hp, cc, fuel type) | `/engines` |
| LEZ / ULEZ compliance checker | `/search?is_lez_compliant=true` |
| Fleet management (filter by emission standard) | `/search?emission_eu=euro6` |
| Garage / workshop vehicle lookup | `/engines` |
| Aviation apps (ICAO type, MTOW) | `/engines?brand=boeing` |

---

## Tech Stack

- **Runtime**: Node.js (TypeScript) on [Vercel Serverless Functions](https://vercel.com/docs/functions)
- **Database**: [Supabase](https://supabase.com) (PostgreSQL)
- **Deploy**: Auto-deploy on push to `main`

---

## Local Development

```bash
npm install
npm run dev   # starts vercel dev on localhost:3000
```

Requires a `.env.local` with:
```
CARSPECS_URL=https://your-project.supabase.co
CARSPECS_KEY=your-supabase-anon-key
```

---

## OpenAPI Spec

The full OpenAPI 3.0.3 spec is at [`openapi.yaml`](./openapi.yaml).
It's also uploaded to RapidAPI where it powers the interactive docs and code samples.

---

## License

© 2026 Proxima Suite — All rights reserved.

# Changelog

All notable changes to the Proxima Vehicle Specs API are documented here.

---

## [1.3.0] — 2026-03-22

### Added
- **EU emission standards** (`emission_eu`): `pre-euro`, `euro1` through `euro6d`, `zero-emission`
- **US emission tiers** (`emission_us`): `tier1`, `tier2`, `tier3`, `zero-emission`
- **LEZ/ULEZ compliance** flag (`is_low_emission_zone_compliant`) — London ULEZ, Milan ZTL, Paris ZFE
- **Aircraft data**: `icao_type` (e.g. B738, A320), `iata_type` (e.g. 738), `mtow_kg` — 185 aircraft covered
- **Search filters**: `emission_eu` and `is_lez_compliant` params on `/api/search`
- **OpenAPI spec** (`openapi.yaml`) with code samples for JavaScript, Python, and cURL

### Changed
- `/api/engines` response now includes all new fields
- `/api/search` switched to direct Supabase query (improved performance)

---

## [1.2.0] — 2026-02

### Added
- Database expanded to **15,000+ engine records** (was ~10,000)
- New vehicle types: `supercar`, `racing`, `historic`, `camper`, `atv`, `snowmobile`
- Africa & Middle East region coverage: Toyota, Nissan, Mitsubishi, Hyundai, Kia
- Historic vehicles: Lamborghini, Porsche, Alfa Romeo, Lancia classic models
- Americana classics: US muscle cars, historic models

### Changed
- Supabase `vehicle_specs` table: `emission_eu` column widened to `VARCHAR(20)`

---

## [1.1.0] — 2026-01

### Added
- `/api/search` endpoint with full-text search across brand, model, engine name
- `vehicle_type` filter on all endpoints
- Boat, aircraft, tractor, ATV data

### Changed
- `/api/brands` and `/api/models` now support `vehicle_type` filtering

---

## [1.0.0] — 2025-12

### Initial Release
- `/api/brands` — list all brands
- `/api/models` — list models by brand
- `/api/engines` — engine specs by brand + model
- Deployed on Vercel, Supabase backend
- ~10,000 engine records covering cars and motorcycles

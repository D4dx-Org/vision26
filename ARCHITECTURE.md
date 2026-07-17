# Vision 2026 — Architecture

Flutter mobile app (package name `vision_2026`, display "Vision 2026"). NGO directory / informational app — no custom backend, thin client over two hosted CMS instances.

## Backend

No dedicated application server. Two external CMS services, hit directly via REST from the client:

| Service | Base URL | Role |
|---|---|---|
| Directus (headless CMS) | `http://139.59.20.49:8055` | Primary content: NGO data, "Zaitoon" stories/episodes |
| Directus assets | `http://139.59.20.49:8055/assets/` | Image/media delivery |
| WordPress | `https://wordpress-1197187-4979850.cloudwaysapps.com/wp-json/wp/v2` | Blog posts, via WP REST API |

Defined in [lib/constants/app_urls.dart](lib/constants/app_urls.dart):
- `ApiUrls.baseUrl` — Directus root
- `ApiUrls.wpBaseUrl` — WordPress REST root
- `ApiUrls.assetBaseUrl` — Directus asset path
- `getEpisode(id)` → `$baseUrl/items/zaitoon_episode?filter[story][_eq]=$id`
- `stories` → `$baseUrl/items/zaitoon_stories`
- `getSpecificPost(postId)` → `$wpBaseUrl/posts/$postId`
- `getFeaturedImage(imageId)` → `media/$imageId`

**Note:** Directus is served over plain HTTP (no TLS) — data in transit is unencrypted. Directus reached by raw IP, not a domain — looks like a self-hosted droplet, no CDN/reverse-proxy in front.

No authentication layer — no `firebase_auth`, JWT, OTP, or API keys found anywhere in the client.

## Client stack

- **Framework:** Flutter, SDK `^3.5.3` ([pubspec.yaml](pubspec.yaml))
- **Language:** Dart
- **Entry point:** [lib/main.dart](lib/main.dart) — `MaterialApp` wrapped in `MultiProvider`, single `ChangeNotifierProvider<HomeProvider>`, starts at `SplashScreen`

### Dependencies (pubspec.yaml)
| Package | Version | Use |
|---|---|---|
| `http` | ^1.2.2 | HTTP client (declared; no direct call sites found in `lib/`) |
| `provider` | ^6.1.2 | State management |
| `shared_preferences` | ^2.3.2 | Local key-value storage (declared, no usage found in `lib/`) |
| `cached_network_image` | ^3.4.1 | Remote image loading + caching (pulls in `flutter_cache_manager` transitively) |
| `flutter_svg` | ^2.0.10+1 | SVG rendering |
| `google_fonts` | ^6.3.3 | Typography |
| `url_launcher` | ^6.3.0 | Open external links (contact, website) |
| `lucide_icons_flutter` | ^3.1.14+2 | Icon set |
| `device_preview` | ^1.2.0 | Dev-time responsive preview (currently commented out in `main.dart`) |

`flutter_cache_manager` is imported directly in [lib/utils/cache_manager.dart](lib/utils/cache_manager.dart) but not declared in `pubspec.yaml` (relies on transitive resolution via `cached_network_image`, marked with `// ignore: depend_on_referenced_packages`).

### State management
Provider (`ChangeNotifier`). Only one provider registered: `HomeProvider` ([lib/providers/home_provider.dart](lib/providers/home_provider.dart)) — currently an empty stub, no state fields or methods. Screens otherwise manage their own local `State`.

### Caching / storage
- `CustomCacheManager` ([lib/utils/cache_manager.dart](lib/utils/cache_manager.dart)) — 7-day stale period, max 100 cached objects, used for network image caching.
- `shared_preferences` declared but not wired up anywhere.
- No local database (no sqlite/hive/isar).

### Auth / Notifications / Firebase
None present. No Firebase SDK, no `google-services.json` / `GoogleService-Info.plist` / `firebase_options.dart`, no FCM, no OneSignal.

## Project structure (lib/)

```
lib/
├── main.dart                  # App entry, MaterialApp + Provider setup
├── constants/                 # app_urls, app_constants, theme, colors, textstyles, images, icons, ui_styles
├── helper/                    # image_viewer, navigation_helper, url_launcher wrappers
├── providers/                 # home_provider.dart (stub ChangeNotifier)
├── utils/                     # cache_manager.dart
└── screens/
    ├── splash_screen/
    ├── language_selection/
    ├── settings/
    └── home_screen/
        └── ngo_detail_screen/  # one folder per NGO program, each with its own sub-screens
            ├── hwf/            # Human Welfare Foundation — education, capacity_building_schools, scholarships, etc.
            ├── hwt/            # incl. healthcare/hwt_health_care_service_detail_screen.dart
            ├── MSS/
            ├── MVT/
            ├── Masawat/
            ├── Sahulat/
            ├── SBF/
            ├── Tweet/
            ├── IRT/
            └── Rehabilitation/
```

No `models/`, `repositories/`, or `services/` layer — no formal API-client abstraction; screens are the main organizational unit, largely static/asset-driven content plus some CMS-image loading via `cached_network_image`.

## Known gaps / inconsistencies

- App version mismatch: [pubspec.yaml](pubspec.yaml) `1.0.2+5` vs hardcoded `1.0.0` in `app_constants.dart`.
- `shared_preferences` dependency present but unused.
- `HomeProvider` registered but empty — Provider wiring exists without actual shared state.
- No API service/repository layer despite two live backend integrations — URL building and (presumably) fetch calls are ad hoc per screen.
- Directus backend on plain HTTP, raw IP — no TLS, no domain.

# Relay Console brand design

This document defines the canonical brand direction for the private Webhook
Delivery Platform client. The direction is **Delivery Trace**: an operational
console that makes event delivery, retries, and endpoint outcomes inspectable.
It is not derived from the Media Pulse artwork used by another client.

## Product naming

The backend keeps the formal name `Webhook Delivery Platform`. The client UI
uses the shorter name `Relay Console`. **Relay Trace** names the mark, not a
separate product.

`Relay Console` is approved for this private client. Public distribution would
require a separate trademark and product-name review.

## Brand idea

Webhook delivery is a traceable route rather than an abstract notification.
The mark therefore combines four pieces of the real delivery model:

- a cobalt source block is the accepted event;
- a cobalt angular path is the primary delivery route;
- an amber lower path is a retry or explicit replay;
- a teal terminal is the receiving endpoint.

The primary and retry paths converge on the same terminal. A retry must not be
drawn as a circular sync arrow, because replay is one operation in the product,
not the product itself. The mark also avoids envelopes, check marks, lightning
bolts, and generic three-node webhook symbols. Those shapes either describe a
single state or fail to distinguish the console from common developer tools.

## Relay Trace mark

The canonical geometry is `assets/brand/relay-trace-master.svg`. It uses a
64-unit square grid and integer-aligned structural coordinates. Stroke caps are
flat and joins are bevelled to retain the routing-diagram character at small
sizes. The mark has no gradients, shadows, enclosing reticle, or rounded path
caps.

![Relay Trace preview](brand/relay-trace-preview.png)

The four source files have separate responsibilities:

| File | Responsibility |
| --- | --- |
| `relay-trace-master.svg` | Opaque primary icon and iOS source |
| `relay-trace-foreground.svg` | Transparent 108-unit adaptive-icon canvas |
| `relay-trace-monochrome.svg` | Safe-area themed icon and constrained use |
| `relay-trace-wordmark.svg` | Horizontal product lockup |

The adaptive foreground and monochrome sources place the unchanged 64-unit
geometry in the center of a 108-unit canvas. This is deliberate safe-area
padding, not a second drawing. Platform icons must be generated from these
files and must never be redrawn by hand.

## Color system

| Token | Hex | Role |
| --- | --- | --- |
| Canvas | `#F4F6F5` | Application background |
| Surface | `#FFFFFF` | Work surfaces and dialogs |
| Ink | `#171B1F` | Primary text and icon background |
| Muted | `#626B68` | Secondary metadata |
| Line | `#CED5D2` | Dividers and field borders |
| Route | `#3F6EF5` | Primary action and delivery route |
| Endpoint | `#19A58C` | Endpoint and accepted connection |
| Retry | `#E3A325` | Retry, replay, and delayed attention |
| Success | `#16845B` | Successful operational state |
| Error | `#C5444C` | Failure and destructive action |

Route, endpoint, and retry colors carry domain meaning in the mark and in
delivery visualizations. Success and error remain semantic UI colors. Never
communicate an operational state by color alone; include stable text and an
icon or shape.

## Typography and wordmark

The product UI uses bundled Roboto under the internal `RelaySans` family, with
Roboto Mono exposed as `RelayMono` for technical values. Both fonts are
distributed under the Apache License 2.0; the license text is stored at
`assets/fonts/LICENSE.txt`. Bundling avoids runtime font requests and keeps
private Web deployments self-contained. The wordmark is a
two-line lockup: compact `RELAY` over the tracked label `CONSOLE`. Product copy
uses `Relay Console`; uppercase is reserved for the lockup and compact
operational labels.

The wordmark uses compact custom path glyphs. It has no font-file dependency,
so browsers, Flutter tooling, and CI render the same geometry. Application
headers should still render localized text normally rather than embedding the
SVG wordmark.

## Small-size and safe-area rules

- Validate the mark at 16, 24, 32, 48, 192, 512, and 1024 pixels.
- Preserve the source block, both routes, and the terminal at every size.
- Do not reduce the 5-unit primary stroke or 4-unit retry stroke.
- Do not detach the teal bridge from the terminal or treat it as a badge.
- Keep the Android adaptive foreground on its 108-unit canvas.
- Give iOS icons an opaque Ink background without a baked corner radius.
- Use the centered foreground composition for PWA maskable icons.
- Render the monochrome SVG with an explicit foreground color; it uses
  `currentColor` by design.

At 16 pixels, rasterization may align edges to the pixel grid, but it must not
change the canonical vector geometry. Any required optical correction belongs
in the asset generator and must be documented there.

## Platform output matrix

| Target | Source | Required output |
| --- | --- | --- |
| Android legacy launcher | Master | Density-specific opaque PNGs |
| Android adaptive foreground | Foreground | Transparent foreground drawable |
| Android themed icon | Monochrome | Single-color monochrome drawable |
| iOS AppIcon | Master | Complete opaque AppIcon catalog |
| Web favicon | Master | 16, 32, and 48 pixel PNGs |
| PWA standard icons | Master | 192 and 512 pixel PNGs |
| PWA maskable icons | Foreground | 192 and 512 pixel icons on Ink |
| Documentation preview | Master and wordmark | 1x and 2x PNG previews |

## Trace Desk interface

The application uses the **Trace Desk** operational layout. It is organized
around delivery inspection, not generic dashboard cards.

- A full-width Ink context bar owns the Relay Console identity, organization
  selector, current account, and sign-out action.
- Desktop navigation is a 72-pixel icon rail. Labels are available through
  tooltips; mobile expands the same destinations inside a drawer.
- Collection pages use ruled responsive data grids with stable domain columns.
  Below 720 pixels each row becomes an ordered label-value record.
- Filters live in a white command bar between the page heading and data grid.
- IDs, URLs, keys, HTTP data, and JSON use monospace presentation.
- Delivery details visualize the event, attempts, and endpoint as a connected
  trace before presenting raw attempt data.
- Authentication uses a full-height brand panel and an unframed form surface;
  it must not be replaced with a centered floating card.

Page sections remain unframed. White surfaces, Ink regions, and one-pixel rules
create hierarchy. Shadows, decorative gradients, pill-shaped status badges,
oversized headings, and unrelated summary cards are outside this design.

Shared ownership lives in `lib/core/presentation/brand_theme.dart`,
`lib/core/presentation/relay_trace_mark.dart`, and
`lib/core/presentation/common_widgets.dart`. Feature pages provide domain data
and actions to those components instead of introducing local palettes or table
implementations.

## Implementation boundary

Brand SVGs are source assets, not Flutter presentation components.
`tool/generate_brand_assets_test.dart` owns rasterization and platform
catalogs. Flutter theme tokens and any in-app mark geometry belong under
`lib/core/presentation`; feature packages must consume shared tokens instead
of defining competing palettes.

Regenerate all outputs from the repository root with:

```powershell
flutter test --no-pub tool/generate_brand_assets_test.dart
```

The generator checks dimensions, PNG alpha requirements, transparent adaptive
padding, and representative brand-color pixels. Generated Android, iOS, Web,
and generic PNG assets remain committed so release builds do not depend on a
graphics tool installed on the CI runner.

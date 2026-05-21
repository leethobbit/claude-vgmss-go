# Third-party software and data

This project bundles or depends on the following third-party works.

## Bundled JavaScript

### htmx 2.0.4 — MIT License

Vendored at [`web/static/vendor/htmx-2.0.4.min.js`](web/static/vendor/htmx-2.0.4.min.js).

> Copyright © 2020 Big Sky Software
>
> Source: https://github.com/bigskysoftware/htmx
> License: MIT — see [the htmx LICENSE](https://github.com/bigskysoftware/htmx/blob/master/LICENSE)

## Go module dependencies

The Go module graph is fully resolvable from [`go.mod`](go.mod) and [`go.sum`](go.sum). Each module retains its own license; the following enumerates direct and significant transitive dependencies for ease of audit.

### Direct dependency

- **`modernc.org/sqlite`** — BSD-3-Clause. Pure-Go SQLite implementation. Source: https://gitlab.com/cznic/sqlite

### Transitive dependencies (pulled in via `modernc.org/sqlite`)

| Module | License | Source |
|---|---|---|
| `github.com/dustin/go-humanize` | MIT | https://github.com/dustin/go-humanize |
| `github.com/google/uuid` | BSD-3-Clause | https://github.com/google/uuid |
| `github.com/mattn/go-isatty` | MIT | https://github.com/mattn/go-isatty |
| `github.com/ncruces/go-strftime` | MIT | https://github.com/ncruces/go-strftime |
| `github.com/remyoudompheng/bigfft` | BSD-3-Clause | https://github.com/remyoudompheng/bigfft |
| `golang.org/x/sys` | BSD-3-Clause | https://cs.opensource.google/go/x/sys |
| `modernc.org/libc` | BSD-3-Clause | https://gitlab.com/cznic/libc |
| `modernc.org/mathutil` | BSD-3-Clause | https://gitlab.com/cznic/mathutil |
| `modernc.org/memory` | BSD-3-Clause | https://gitlab.com/cznic/memory |

Each module's full license text is available in its respective source repository.

## Bundled data

The [`reference/`](reference/) directory contains community-curated CSVs derived from public Google Sheets documenting commercial sound sources used in video game soundtracks. These compendia are the work of many community researchers — the CSVs themselves contain credit blocks listing contributors. **The seed data in [`internal/migrate/seed/`](internal/migrate/seed/) is derived from these compendia.**

Source compendia included (non-exhaustive):

- **NEWER VGM Sound Sources** — community spreadsheet covering Pokémon, Mario, Zelda, Capcom, Square-Enix, Sonic, and other publishers' soundtracks
- **SoundTeMP Sound Sources & Information Compendium (WIP)** — focuses on SoundTeMP studio's catalog (Ragnarok Online, Talesweaver, Arcturus, etc.)
- **Final Fantasy Sound Sources (Detailed)** — per-sample granularity for the Final Fantasy series
- **HOYO-MiX Sound Sources** — Genshin Impact, Honkai: Star Rail, and related miHoYo / HoYoverse titles
- **G-Boy's VGM Instrument Source Spreadsheet (V.I.S.S.)** — multi-publisher per-instrument index
- **Square Enix Sound Sources (Detailed)**

These works do not carry formal software licenses but are publicly shared under community-attribution norms. Contributors listed inside the source CSVs (the "Research by:" rows in each compendium's Rules tab) hold any authorship rights to the curated information. **If you redistribute this database or anything derived from it, please credit the source compendia and their contributors.**

If you are a contributor to one of these compendia and want formal acknowledgement or removal of any data, please open an issue.

## Game and music attribution

Track names, album titles, and game titles referenced throughout the seed data are creative works owned by their respective publishers (Nintendo, The Pokémon Company, Game Freak, Square Enix, HoYoverse / miHoYo, SoundTeMP / GRAVITY / etc.). Their use here is descriptive — this is a research database about commercial sound sources, not a distribution of any copyrighted audio or musical work.

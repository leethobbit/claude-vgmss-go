# vgmss — Video Game Music Sound Source

> **Disclaimer:** This is a personal learning project for getting hands-on with GenAI-assisted development workflows that I can apply to my day job. The code, schema, and ingestion approach were built almost entirely through Claude Code as a way to practice driving an agent on a real, non-trivial codebase. For some of you, that may be a deal breaker and I totally get it.  But, I figured if I have to do this either way, why not share something potentially fun while I'm doing it?

A single-user web app for browsing video games and the commercial sounds, hardware, and sample libraries used to compose their soundtracks.

The data comes from community-curated Google Sheets (NEWER VGM, SoundTeMP, HOYO-MiX, Final Fantasy Detailed, G-Boy's V.I.S.S.); this project ingests those CSVs into a unified SQLite schema and serves them as a browsable, searchable site.

## Status

- 66 games, ~5,100 usage rows, 414 equipment items, 60+ manufacturers loaded
- Ingestion is ongoing — full progress and remaining work in [docs/ROADMAP.md](docs/ROADMAP.md)

## Stack

- Go 1.25, standard library only on the server side (`net/http` mux, `html/template`, `database/sql`)
- [modernc.org/sqlite](https://pkg.go.dev/modernc.org/sqlite) — pure-Go SQLite driver, no CGo
- Vendored [htmx](https://htmx.org/) for progressive enhancement on the frontend
- Single Go binary, `FROM scratch` Docker image, SQLite file on a mounted volume

There is no JavaScript build step, no ORM, no migration tool dependency, and no third-party Go HTTP router. Hand-written SQL lives in `internal/queries/`; forward-only migrations live in `internal/migrate/sql/` and `internal/migrate/seed/`.

## Run it

### Docker Compose (recommended)

```sh
docker compose up --build
```

Binds `127.0.0.1:8220` on the host. Override with `VGMSS_PORT`. The SQLite file is persisted under `./data/`.

### Local Go

```sh
go run ./cmd/vgmss
```

Listens on `127.0.0.1:8220`; writes the database to `./data/vgmss.db`. Flags: `-addr` (listen address), `-db` (database path). `VGMSS_DB` env var overrides the default.

## Project layout

| Path | Purpose |
|---|---|
| `cmd/vgmss/main.go` | Entry point; wires DB, templates, mux, signal-driven shutdown |
| `internal/app/` | `*App` struct + handler methods per resource (games, equipment, usages, search) |
| `internal/queries/` | Hand-written SQL functions, one file per resource |
| `internal/db/open.go` | `sql.Open` + `foreign_keys=1` + WAL + `busy_timeout=5000` + `temp_store=MEMORY` |
| `internal/migrate/` | Forward-only embed.FS migrator; numbered `.sql` files in `sql/` (schema) and `seed/` (data) |
| `web/templates/` | One layout, pages under `pages/`, partials under `partials/` |
| `web/static/vendor/` | Vendored htmx with `.sha256` sidecar |
| `reference/` | Source CSVs exported from the community sheets |
| `docs/ROADMAP.md` | Ingestion progress and remaining batches |

## Data sources and credit

The factual content — what synth was used on what soundtrack — is the work of the maintainers and contributors of the following community spreadsheets:

- **NEWER VGM Sound Sources** (Nintendo, Capcom, Sega/Atlus, Pokémon, Sonic, Zelda, Square Enix, Mario, HAL, Konami/Hudson, etc.)
- **SoundTeMP Sound Sources & Information Compendium**
- **HOYO-MiX Sound Sources** (Genshin Impact, Honkai Star Rail, Honkai Impact 3rd, Zenless Zone Zero, etc.)
- **Final Fantasy Sound Sources (Detailed)**
- **G-Boy's VGM Instrument Source Spreadsheet (V.I.S.S.)**

If you maintain one of these sheets and have a preference about attribution, citation format, or removal, please open an issue.

## License

Not yet decided. The code in this repo is currently "all rights reserved" by default until a license is added. The ingested data belongs to the original community maintainers cited above and is not relicensed by this project's presence here.

## Conventions

Agent-facing conventions and architectural rules are in [CLAUDE.md](CLAUDE.md). The short version:

- Standard library first; new Go dependencies require explicit approval per the dependency gate in `~/.claude/docs/go-stack.md`
- Hand-written SQL, no ORM; one query file per resource
- Forward-only numbered migrations; never rewrite a committed migration
- Seed data is hand-converted SQL — no scripted CSV-to-SQL helpers in agent passes
- One commit per ingestion batch

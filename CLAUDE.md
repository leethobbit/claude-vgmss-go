# Video Game Music Sound Source

## What this project is

vgmss (Video Game Music Sound Source) — single-user web app for browsing video games and the commercial sounds / hardware / sample libraries used to compose their soundtracks. Source data is the community-curated CSVs under `reference/`. 

## Stack reference

Global Go stack conventions (dependency gate, allowlist, decision table, htmx tier model) → `~/.claude/docs/go-stack.md`

**The dependency gate in that doc applies to this project.** Do not add Go modules or vendored JS without explicit approval per session.

## Commands

| Command | Purpose |
|---|---|
| `go build ./...` | Compile |
| `go test ./...` | All tests |
| `go test -race ./...` | Tests with race detector |
| `go vet ./...` | Static analysis |
| `go mod tidy && go mod verify` | Reconcile and verify deps |
| `docker compose up --build` | Local dev stack |

## Key files

| Path | Purpose |
|---|---|
| `cmd/vgmss/main.go` | Entry point; wires DB, templates, mux, signal-driven shutdown |
| `embed.go` | Root-package `embed.FS` for `web/` assets (templates + static) |
| `internal/app/` | `*App` struct + handler methods per resource (games, equipment, usages, search) |
| `internal/queries/` | Hand-written SQL functions; one file per resource |
| `internal/db/open.go` | `sql.Open` + `foreign_keys=1` + `journal_mode=WAL` + `busy_timeout=5000` |
| `internal/migrate/` | Forward-only embed.FS migrator; numbered `.sql` files in `sql/` |
| `web/templates/layout.html` | Single layout; pages live under `pages/`, partials under `partials/` |
| `web/static/vendor/` | Vendored htmx with `.sha256` sidecar |
| `Dockerfile`, `docker-compose.yml` | Two-stage scratch image; host port bound to `127.0.0.1:8080` |

## Common operations

| Task | Pattern |
|---|---|
| Add a new route | New method on `*App` in `internal/app/<resource>.go`, register in `internal/app/app.go` `Routes()` |
| Add a new DB query | Hand-written SQL function in `internal/queries/<resource>.go`, no ORM |
| Add a vendored JS asset | Follow "Doing Y" workflow in `~/.claude/docs/go-stack.md` |
| Add a new migration | Next-numbered `.sql` file in `internal/migrate/sql/` (e.g. `0002_*.sql`) |
| Bootstrap data from a CSV | One-time manual agent pass writing a seed migration like `0002_seed_newer_vgm_pokemon.sql` |
| Commit after a seed batch | At the end of every ingestion batch, commit the new seed files. One commit per batch. No scripting in subagents — hand-converted SQL only. |
| Add a third-party Go dep | **Stop. Propose to user per dependency gate.** |

## Schema notes

- v1 unified-lossy schema reserves `sample_label`/`sample_ref`/`source_family` for future FF Detailed and HOYO-MiX ingestion. Use those columns when seeding non-NEWER-VGM data; do not add a new table.
- `usages.product_id` is nullable; when source is unknown, populate `usages.raw_source` instead.
- `updated_at` does NOT auto-update; the query layer sets it in every UPDATE statement.
- Race detector (`go test -race`) requires `CGO_ENABLED=1`; the prod build is CGo-free, so race tests are local-only.

## The 11 Rules


These rules apply to every task in this project unless explicitly overridden.
Bias: caution over speed on non-trivial work. Use judgment on trivial tasks.

### Rule 1 — Think Before Coding
State assumptions explicitly. If uncertain, ask rather than guess.
Present multiple interpretations when ambiguity exists.
Push back when a simpler approach exists.
Stop when confused. Name what's unclear.

### Rule 2 — Simplicity First
Minimum code that solves the problem. Nothing speculative.
No features beyond what was asked. No abstractions for single-use code.
Test: would a senior engineer say this is overcomplicated? If yes, simplify.

### Rule 3 — Surgical Changes
Touch only what you must. Clean up only your own mess.
Don't "improve" adjacent code, comments, or formatting.
Don't refactor what isn't broken. Match existing style.

### Rule 4 — Goal-Driven Execution
Define success criteria. Loop until verified.
Don't follow steps. Define success and iterate.
Strong success criteria let you loop independently.

### Rule 5 — Use the model only for judgment calls
Use me for: classification, drafting, summarization, extraction.
Do NOT use me for: routing, retries, deterministic transforms.
If code can answer, code answers.

### Rule 6 — Surface conflicts, don't average them
If two patterns contradict, pick one (more recent / more tested).
Explain why. Flag the other for cleanup.
Don't blend conflicting patterns.

### Rule 7 — Read before you write
Before adding code, read exports, immediate callers, shared utilities.
"Looks orthogonal" is dangerous. If unsure why code is structured a way, ask.

### Rule 8 — Tests verify intent, not just behavior
Tests must encode WHY behavior matters, not just WHAT it does.
A test that can't fail when business logic changes is wrong.

### Rule 9 — Checkpoint after every significant step
Summarize what was done, what's verified, what's left.
Don't continue from a state you can't describe back.
If you lose track, stop and restate.

### Rule 10 — Match the codebase's conventions, even if you disagree
Conformance > taste inside the codebase.
If you genuinely think a convention is harmful, surface it. Don't fork silently.

### Rule 11 — Fail loud
"Completed" is wrong if anything was skipped silently.
"Tests pass" is wrong if any were skipped.
Default to surfacing uncertainty, not hiding it.
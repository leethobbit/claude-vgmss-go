package queries

import (
	"context"
	"database/sql"
	"path/filepath"
	"strings"
	"testing"

	"github.com/leethobbit/vgmss/internal/db"
	"github.com/leethobbit/vgmss/internal/migrate"
)

func setupDB(t *testing.T) *sql.DB {
	t.Helper()
	d, err := db.Open(filepath.Join(t.TempDir(), "test.db"))
	if err != nil {
		t.Fatalf("open: %v", err)
	}
	t.Cleanup(func() { d.Close() })
	if err := migrate.Run(context.Background(), d); err != nil {
		t.Fatalf("migrate: %v", err)
	}
	return d
}

func TestGameCRUDAndNormalization(t *testing.T) {
	d := setupDB(t)
	ctx := context.Background()

	g := Game{
		Title:     "Final Fantasy VI",
		Platform:  "SNES",
		Released:  "1994",
		Composers: "  Nobuo Uematsu , Yoko Shimomura  ",
	}
	id, err := CreateGame(ctx, d, g)
	if err != nil {
		t.Fatalf("create: %v", err)
	}
	got, err := GetGame(ctx, d, id)
	if err != nil {
		t.Fatalf("get: %v", err)
	}
	if got.Title != g.Title {
		t.Errorf("title mismatch: %q != %q", got.Title, g.Title)
	}
	if got.ComposersNormalized != "nobuo uematsu, yoko shimomura" {
		t.Errorf("composers_normalized = %q, want %q",
			got.ComposersNormalized, "nobuo uematsu, yoko shimomura")
	}

	got.Title = "Final Fantasy VI (revised)"
	if err := UpdateGame(ctx, d, got); err != nil {
		t.Fatalf("update: %v", err)
	}
	got2, _ := GetGame(ctx, d, id)
	if got2.Title != "Final Fantasy VI (revised)" {
		t.Errorf("update didn't stick: %q", got2.Title)
	}

	if err := DeleteGame(ctx, d, id); err != nil {
		t.Fatalf("delete: %v", err)
	}
	if _, err := GetGame(ctx, d, id); err == nil {
		t.Errorf("expected error after delete, got nil")
	}
}

func TestManufacturerNoCaseDedup(t *testing.T) {
	d := setupDB(t)
	ctx := context.Background()

	_, err := CreateProduct(ctx, d, "Roland", Product{Name: "JV-1080", Type: "Synth"})
	if err != nil {
		t.Fatalf("create 1: %v", err)
	}
	_, err = CreateProduct(ctx, d, "roland", Product{Name: "SC-88 Pro", Type: "Hardware"})
	if err != nil {
		t.Fatalf("create 2: %v", err)
	}

	var n int
	if err := d.QueryRowContext(ctx, `SELECT COUNT(*) FROM manufacturers`).Scan(&n); err != nil {
		t.Fatalf("count: %v", err)
	}
	if n != 1 {
		t.Errorf("expected 1 manufacturer (NOCASE dedup), got %d", n)
	}
}

func TestUsageReverseLookup(t *testing.T) {
	d := setupDB(t)
	ctx := context.Background()

	gID, _ := CreateGame(ctx, d, Game{Title: "Pokémon Ruby"})
	pID, _ := CreateProduct(ctx, d, "KORG", Product{Name: "TRINITY Pro", Type: "Synth"})

	_, err := CreateUsage(ctx, d, Usage{
		GameID:    gID,
		ProductID: sql.NullInt64{Int64: pID, Valid: true},
		PathBank:  "Combinations → Bank A",
		Preset:    "A110 BIG BONED (fat)",
		Examples:  "Abandoned Ship, Battle! (Regirock, Regice, Registeel)",
		Category:  "main",
	})
	if err != nil {
		t.Fatalf("create usage: %v", err)
	}

	byGame, err := UsagesByGame(ctx, d, gID)
	if err != nil {
		t.Fatalf("by game: %v", err)
	}
	if len(byGame) != 1 || byGame[0].ProductName != "TRINITY Pro" {
		t.Errorf("by game wrong: %+v", byGame)
	}
	if !strings.Contains(byGame[0].Examples, "Abandoned Ship") {
		t.Errorf("examples not preserved verbatim: %q", byGame[0].Examples)
	}

	byProduct, err := UsagesByProduct(ctx, d, pID)
	if err != nil {
		t.Fatalf("by product: %v", err)
	}
	if len(byProduct) != 1 || byProduct[0].GameTitle != "Pokémon Ruby" {
		t.Errorf("reverse lookup wrong: %+v", byProduct)
	}
}

func TestDeleteProductBlockedByUsages(t *testing.T) {
	d := setupDB(t)
	ctx := context.Background()

	gID, _ := CreateGame(ctx, d, Game{Title: "X"})
	pID, _ := CreateProduct(ctx, d, "Brand", Product{Name: "Thing"})
	_, _ = CreateUsage(ctx, d, Usage{GameID: gID, ProductID: sql.NullInt64{Int64: pID, Valid: true}})

	if err := DeleteProduct(ctx, d, pID); err == nil {
		t.Errorf("expected RESTRICT to block product deletion with usages, got nil error")
	}
}

func TestDeleteGameCascadesUsages(t *testing.T) {
	d := setupDB(t)
	ctx := context.Background()

	gID, _ := CreateGame(ctx, d, Game{Title: "X"})
	pID, _ := CreateProduct(ctx, d, "Brand", Product{Name: "Thing"})
	_, _ = CreateUsage(ctx, d, Usage{GameID: gID, ProductID: sql.NullInt64{Int64: pID, Valid: true}})

	if err := DeleteGame(ctx, d, gID); err != nil {
		t.Fatalf("delete game: %v", err)
	}
	var n int
	if err := d.QueryRowContext(ctx, `SELECT COUNT(*) FROM usages WHERE game_id = ?`, gID).Scan(&n); err != nil {
		t.Fatalf("count: %v", err)
	}
	if n != 0 {
		t.Errorf("expected usages cascaded on game delete, got %d", n)
	}
}

func TestSearchAcrossKinds(t *testing.T) {
	d := setupDB(t)
	ctx := context.Background()

	gID, _ := CreateGame(ctx, d, Game{Title: "Chrono Trigger", Composers: "Yasunori Mitsuda"})
	pID, _ := CreateProduct(ctx, d, "Roland", Product{Name: "JV-1080"})
	_, _ = CreateUsage(ctx, d, Usage{
		GameID:    gID,
		ProductID: sql.NullInt64{Int64: pID, Valid: true},
		Examples:  "Wind Scene, Schala's Theme",
	})

	hits, err := Search(ctx, d, "Schala", 50)
	if err != nil {
		t.Fatalf("search: %v", err)
	}
	found := false
	for _, h := range hits {
		if h.Kind == "usage" && strings.Contains(h.Snippet, "Schala") {
			found = true
		}
	}
	if !found {
		t.Errorf("expected to find 'Schala' in usage examples, hits=%+v", hits)
	}

	hits, err = Search(ctx, d, "JV-1080", 50)
	if err != nil {
		t.Fatalf("search: %v", err)
	}
	found = false
	for _, h := range hits {
		if h.Kind == "equipment" {
			found = true
		}
	}
	if !found {
		t.Errorf("expected to find JV-1080 as equipment hit, hits=%+v", hits)
	}
}

func TestUsageWithoutProduct(t *testing.T) {
	d := setupDB(t)
	ctx := context.Background()

	gID, _ := CreateGame(ctx, d, Game{Title: "X"})
	_, err := CreateUsage(ctx, d, Usage{
		GameID:    gID,
		RawSource: "UNKNOWN — Famitracker module",
		Examples:  "Track 1",
	})
	if err != nil {
		t.Fatalf("create usage without product: %v", err)
	}
	usages, _ := UsagesByGame(ctx, d, gID)
	if len(usages) != 1 || usages[0].ProductID.Valid {
		t.Errorf("expected unmapped usage with null product, got %+v", usages)
	}
	if usages[0].RawSource != "UNKNOWN — Famitracker module" {
		t.Errorf("raw_source not preserved: %q", usages[0].RawSource)
	}
}

func TestProductFrequencyByGame(t *testing.T) {
	d := setupDB(t)
	ctx := context.Background()

	gID, _ := CreateGame(ctx, d, Game{Title: "Pokémon Ruby"})
	other, _ := CreateGame(ctx, d, Game{Title: "Other"})
	trinity, _ := CreateProduct(ctx, d, "KORG", Product{Name: "TRINITY Pro", Type: "Synth"})
	sc88, _ := CreateProduct(ctx, d, "Roland", Product{Name: "SC-88 Pro", Type: "Hardware"})

	// Trinity: 4 usages on game (3 main, 1 unused). Should be the max.
	for i := 0; i < 3; i++ {
		_, _ = CreateUsage(ctx, d, Usage{GameID: gID, ProductID: sql.NullInt64{Int64: trinity, Valid: true}, Category: "main"})
	}
	_, _ = CreateUsage(ctx, d, Usage{GameID: gID, ProductID: sql.NullInt64{Int64: trinity, Valid: true}, Category: "unused"})

	// SC-88: 2 usages on game (both main).
	_, _ = CreateUsage(ctx, d, Usage{GameID: gID, ProductID: sql.NullInt64{Int64: sc88, Valid: true}, Category: "main"})
	_, _ = CreateUsage(ctx, d, Usage{GameID: gID, ProductID: sql.NullInt64{Int64: sc88, Valid: true}, Category: "main"})

	// One raw_source-only usage on game.
	_, _ = CreateUsage(ctx, d, Usage{GameID: gID, RawSource: "UNKNOWN — Famitracker module", Category: "main"})

	// Noise: usages on a different game must not bleed in.
	_, _ = CreateUsage(ctx, d, Usage{GameID: other, ProductID: sql.NullInt64{Int64: trinity, Valid: true}, Category: "main"})

	got, err := ProductFrequencyByGame(ctx, d, gID)
	if err != nil {
		t.Fatalf("freq: %v", err)
	}
	if len(got) != 3 {
		t.Fatalf("expected 3 rows (2 products + 1 raw), got %d: %+v", len(got), got)
	}

	// Ordering: total DESC.
	if got[0].Label != "TRINITY Pro" || got[0].Total != 4 {
		t.Errorf("row 0: want TRINITY Pro/4, got %s/%d", got[0].Label, got[0].Total)
	}
	if got[1].Label != "SC-88 Pro" || got[1].Total != 2 {
		t.Errorf("row 1: want SC-88 Pro/2, got %s/%d", got[1].Label, got[1].Total)
	}
	if got[2].Label != "UNKNOWN — Famitracker module" || got[2].Total != 1 {
		t.Errorf("row 2: want unknown/1, got %s/%d", got[2].Label, got[2].Total)
	}

	// BarPercent: relative to max (4), so 100 / 50 / 25.
	if got[0].BarPercent != 100 || got[1].BarPercent != 50 || got[2].BarPercent != 25 {
		t.Errorf("bar percents: want 100/50/25, got %d/%d/%d",
			got[0].BarPercent, got[1].BarPercent, got[2].BarPercent)
	}

	// HasBreakdown only when categories diverge from all-main.
	if !got[0].HasBreakdown() {
		t.Errorf("Trinity row should report a breakdown (3 main + 1 unused)")
	}
	if got[1].HasBreakdown() {
		t.Errorf("SC-88 row is pure main, should not report breakdown")
	}
	if bd := got[0].Breakdown(); !strings.Contains(bd, "3 main") || !strings.Contains(bd, "1 unused") {
		t.Errorf("breakdown text wrong: %q", bd)
	}

	// raw_source row has no ProductID and is rendered with the raw string.
	if got[2].ProductID.Valid {
		t.Errorf("raw_source row should not have a ProductID")
	}
}

func TestCheckConstraintCategoryRejectsGarbage(t *testing.T) {
	d := setupDB(t)
	ctx := context.Background()

	gID, _ := CreateGame(ctx, d, Game{Title: "X"})
	_, err := CreateUsage(ctx, d, Usage{GameID: gID, Category: "bogus"})
	if err == nil {
		t.Errorf("expected CHECK constraint to reject category='bogus', got nil")
	}
}

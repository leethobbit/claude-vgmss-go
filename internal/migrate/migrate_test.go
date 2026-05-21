package migrate

import (
	"context"
	"path/filepath"
	"testing"

	"github.com/leethobbit/vgmss/internal/db"
)

func TestRunIdempotent(t *testing.T) {
	d, err := db.Open(filepath.Join(t.TempDir(), "test.db"))
	if err != nil {
		t.Fatalf("open: %v", err)
	}
	defer d.Close()

	ctx := context.Background()
	if err := Run(ctx, d); err != nil {
		t.Fatalf("first run: %v", err)
	}
	if err := Run(ctx, d); err != nil {
		t.Fatalf("second run (should be no-op): %v", err)
	}

	var count int
	if err := d.QueryRowContext(ctx,
		`SELECT COUNT(*) FROM schema_migrations`).Scan(&count); err != nil {
		t.Fatalf("count migrations: %v", err)
	}
	if count < 1 {
		t.Errorf("expected at least 1 migration recorded, got %d", count)
	}

	tables := []string{"manufacturers", "products", "games", "usages"}
	for _, tbl := range tables {
		var n int
		if err := d.QueryRowContext(ctx,
			`SELECT COUNT(*) FROM `+tbl).Scan(&n); err != nil {
			t.Errorf("table %s missing: %v", tbl, err)
		}
	}
}

func TestSeedApplies(t *testing.T) {
	d, err := db.Open(filepath.Join(t.TempDir(), "test.db"))
	if err != nil {
		t.Fatalf("open: %v", err)
	}
	defer d.Close()

	ctx := context.Background()
	if err := Run(ctx, d); err != nil {
		t.Fatalf("schema run: %v", err)
	}
	if err := Seed(ctx, d); err != nil {
		t.Fatalf("seed run: %v", err)
	}
	if err := Seed(ctx, d); err != nil {
		t.Fatalf("second seed run (should be no-op): %v", err)
	}

	var games int
	if err := d.QueryRowContext(ctx, `SELECT COUNT(*) FROM games`).Scan(&games); err != nil {
		t.Fatalf("count games: %v", err)
	}
	if games < 3 {
		t.Errorf("expected at least 3 seeded games (R/B, R/S, FRLG), got %d", games)
	}

	var usages int
	if err := d.QueryRowContext(ctx, `SELECT COUNT(*) FROM usages`).Scan(&usages); err != nil {
		t.Fatalf("count usages: %v", err)
	}
	if usages < 50 {
		t.Errorf("expected at least 50 seeded usages, got %d", usages)
	}
}

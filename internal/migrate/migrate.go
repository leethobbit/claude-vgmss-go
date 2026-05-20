package migrate

import (
	"context"
	"database/sql"
	"embed"
	"errors"
	"fmt"
	"io/fs"
	"sort"
)

//go:embed sql/*.sql
var schemaFiles embed.FS

//go:embed seed/*.sql
var seedFiles embed.FS

func Run(ctx context.Context, db *sql.DB) error {
	return apply(ctx, db, schemaFiles, "sql", "schema:")
}

func Seed(ctx context.Context, db *sql.DB) error {
	return apply(ctx, db, seedFiles, "seed", "seed:")
}

func apply(ctx context.Context, db *sql.DB, files embed.FS, dir, keyPrefix string) error {
	if _, err := db.ExecContext(ctx,
		`CREATE TABLE IF NOT EXISTS schema_migrations(
		   version TEXT PRIMARY KEY,
		   applied_at TEXT NOT NULL DEFAULT (datetime('now')))`); err != nil {
		return fmt.Errorf("create schema_migrations: %w", err)
	}

	entries, err := fs.ReadDir(files, dir)
	if err != nil {
		return fmt.Errorf("read %s dir: %w", dir, err)
	}
	sort.Slice(entries, func(i, j int) bool { return entries[i].Name() < entries[j].Name() })

	for _, e := range entries {
		name := e.Name()
		key := keyPrefix + name

		var existing string
		err := db.QueryRowContext(ctx,
			`SELECT version FROM schema_migrations WHERE version = ?`, key).Scan(&existing)
		if err == nil {
			continue
		}
		if !errors.Is(err, sql.ErrNoRows) {
			return fmt.Errorf("check %s: %w", key, err)
		}

		body, err := fs.ReadFile(files, dir+"/"+name)
		if err != nil {
			return fmt.Errorf("read %s: %w", key, err)
		}

		tx, err := db.BeginTx(ctx, nil)
		if err != nil {
			return fmt.Errorf("begin tx for %s: %w", key, err)
		}
		if _, err := tx.ExecContext(ctx, string(body)); err != nil {
			_ = tx.Rollback()
			return fmt.Errorf("apply %s: %w", key, err)
		}
		if _, err := tx.ExecContext(ctx,
			`INSERT INTO schema_migrations(version) VALUES (?)`, key); err != nil {
			_ = tx.Rollback()
			return fmt.Errorf("record %s: %w", key, err)
		}
		if err := tx.Commit(); err != nil {
			return fmt.Errorf("commit %s: %w", key, err)
		}
	}
	return nil
}

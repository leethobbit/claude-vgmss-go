package queries

import (
	"context"
	"database/sql"
	"fmt"
)

type Usage struct {
	ID           int64
	GameID       int64
	GameTitle    string
	ProductID    sql.NullInt64
	ProductName  string
	Manufacturer string
	RawSource    string
	PathBank     string
	Preset       string
	SampleLabel  string
	SampleRef    string
	Notes        string
	Examples     string
	DemoURL      string
	Category     string
	SourceFamily string
	Position     sql.NullInt64
	CreatedAt    string
	UpdatedAt    string
}

const usageSelect = `
SELECT u.id, u.game_id, g.title,
       u.product_id,
       COALESCE(p.name,''), COALESCE(m.name,''),
       COALESCE(u.raw_source,''), COALESCE(u.path_bank,''), COALESCE(u.preset,''),
       COALESCE(u.sample_label,''), COALESCE(u.sample_ref,''),
       COALESCE(u.notes,''), COALESCE(u.examples,''), COALESCE(u.demo_url,''),
       u.category, u.source_family, u.position, u.created_at, u.updated_at
  FROM usages u
  JOIN games g ON g.id = u.game_id
  LEFT JOIN products p ON p.id = u.product_id
  LEFT JOIN manufacturers m ON m.id = p.manufacturer_id`

func scanUsages(rows *sql.Rows) ([]Usage, error) {
	var out []Usage
	for rows.Next() {
		var u Usage
		if err := rows.Scan(&u.ID, &u.GameID, &u.GameTitle,
			&u.ProductID,
			&u.ProductName, &u.Manufacturer,
			&u.RawSource, &u.PathBank, &u.Preset,
			&u.SampleLabel, &u.SampleRef,
			&u.Notes, &u.Examples, &u.DemoURL,
			&u.Category, &u.SourceFamily, &u.Position,
			&u.CreatedAt, &u.UpdatedAt); err != nil {
			return nil, fmt.Errorf("scan usage: %w", err)
		}
		out = append(out, u)
	}
	return out, rows.Err()
}

func GetUsage(ctx context.Context, db *sql.DB, id int64) (Usage, error) {
	rows, err := db.QueryContext(ctx, usageSelect+` WHERE u.id = ?`, id)
	if err != nil {
		return Usage{}, fmt.Errorf("get usage %d: %w", id, err)
	}
	defer rows.Close()
	out, err := scanUsages(rows)
	if err != nil {
		return Usage{}, err
	}
	if len(out) == 0 {
		return Usage{}, sql.ErrNoRows
	}
	return out[0], nil
}

func UsagesByGame(ctx context.Context, db *sql.DB, gameID int64) ([]Usage, error) {
	rows, err := db.QueryContext(ctx,
		usageSelect+` WHERE u.game_id = ? ORDER BY u.position, u.id`, gameID)
	if err != nil {
		return nil, fmt.Errorf("usages by game %d: %w", gameID, err)
	}
	defer rows.Close()
	return scanUsages(rows)
}

func UsagesByProduct(ctx context.Context, db *sql.DB, productID int64) ([]Usage, error) {
	rows, err := db.QueryContext(ctx,
		usageSelect+` WHERE u.product_id = ? ORDER BY g.title COLLATE NOCASE, u.position, u.id`, productID)
	if err != nil {
		return nil, fmt.Errorf("usages by product %d: %w", productID, err)
	}
	defer rows.Close()
	return scanUsages(rows)
}

func CreateUsage(ctx context.Context, db *sql.DB, u Usage) (int64, error) {
	res, err := db.ExecContext(ctx,
		`INSERT INTO usages
		   (game_id, product_id, raw_source, path_bank, preset,
		    sample_label, sample_ref, notes, examples, demo_url,
		    category, source_family, position)
		 VALUES (?, ?, ?, ?, ?,  ?, ?, ?, ?, ?,  ?, ?, ?)`,
		u.GameID, productIDArg(u.ProductID),
		nullable(u.RawSource), nullable(u.PathBank), nullable(u.Preset),
		nullable(u.SampleLabel), nullable(u.SampleRef),
		nullable(u.Notes), nullable(u.Examples), nullable(u.DemoURL),
		coalesceStr(u.Category, "main"),
		coalesceStr(u.SourceFamily, "newer_vgm"),
		positionArg(u.Position))
	if err != nil {
		return 0, fmt.Errorf("create usage: %w", err)
	}
	return res.LastInsertId()
}

func UpdateUsage(ctx context.Context, db *sql.DB, u Usage) error {
	_, err := db.ExecContext(ctx,
		`UPDATE usages
		    SET game_id = ?, product_id = ?, raw_source = ?,
		        path_bank = ?, preset = ?, sample_label = ?, sample_ref = ?,
		        notes = ?, examples = ?, demo_url = ?,
		        category = ?, source_family = ?, position = ?,
		        updated_at = datetime('now')
		  WHERE id = ?`,
		u.GameID, productIDArg(u.ProductID),
		nullable(u.RawSource), nullable(u.PathBank), nullable(u.Preset),
		nullable(u.SampleLabel), nullable(u.SampleRef),
		nullable(u.Notes), nullable(u.Examples), nullable(u.DemoURL),
		coalesceStr(u.Category, "main"),
		coalesceStr(u.SourceFamily, "newer_vgm"),
		positionArg(u.Position), u.ID)
	if err != nil {
		return fmt.Errorf("update usage %d: %w", u.ID, err)
	}
	return nil
}

func DeleteUsage(ctx context.Context, db *sql.DB, id int64) error {
	if _, err := db.ExecContext(ctx, `DELETE FROM usages WHERE id = ?`, id); err != nil {
		return fmt.Errorf("delete usage %d: %w", id, err)
	}
	return nil
}

func productIDArg(n sql.NullInt64) any {
	if !n.Valid {
		return nil
	}
	return n.Int64
}

func positionArg(n sql.NullInt64) any {
	if !n.Valid {
		return nil
	}
	return n.Int64
}

func coalesceStr(s, fallback string) string {
	if s == "" {
		return fallback
	}
	return s
}

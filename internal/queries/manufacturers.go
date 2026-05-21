package queries

import (
	"context"
	"database/sql"
	"fmt"
	"strings"
)

type Manufacturer struct {
	ID   int64
	Name string
}

type ManufacturerProduct struct {
	ID                 int64
	Name               string
	Type               string
	Notes              string
	FirstRecordedUsage string
	LastRecordedUsage  string
	UsageCount         int
	GameCount          int
}

// ErrManufacturerNameTaken is returned when a create/update would violate
// the case-insensitive UNIQUE constraint on manufacturers.name.
var ErrManufacturerNameTaken = fmt.Errorf("manufacturer name already in use")

func ListManufacturers(ctx context.Context, db *sql.DB, q string) ([]Manufacturer, error) {
	var (
		rows *sql.Rows
		err  error
	)
	if q == "" {
		rows, err = db.QueryContext(ctx,
			`SELECT id, name FROM manufacturers ORDER BY name COLLATE NOCASE`)
	} else {
		pat := "%" + q + "%"
		rows, err = db.QueryContext(ctx,
			`SELECT id, name FROM manufacturers
			  WHERE name LIKE ? COLLATE NOCASE
			  ORDER BY name COLLATE NOCASE`, pat)
	}
	if err != nil {
		return nil, fmt.Errorf("list manufacturers: %w", err)
	}
	defer rows.Close()

	var out []Manufacturer
	for rows.Next() {
		var m Manufacturer
		if err := rows.Scan(&m.ID, &m.Name); err != nil {
			return nil, fmt.Errorf("scan manufacturer: %w", err)
		}
		out = append(out, m)
	}
	return out, rows.Err()
}

func GetManufacturer(ctx context.Context, db *sql.DB, id int64) (Manufacturer, error) {
	var m Manufacturer
	err := db.QueryRowContext(ctx,
		`SELECT id, name FROM manufacturers WHERE id = ?`, id).Scan(&m.ID, &m.Name)
	if err != nil {
		return Manufacturer{}, fmt.Errorf("get manufacturer %d: %w", id, err)
	}
	return m, nil
}

func ProductsByManufacturer(ctx context.Context, db *sql.DB, manufacturerID int64) ([]ManufacturerProduct, error) {
	rows, err := db.QueryContext(ctx, `
SELECT p.id, p.name, COALESCE(p.type,''), COALESCE(p.notes,''),
       COALESCE(p.first_recorded_usage,''), COALESCE(p.last_recorded_usage,''),
       COUNT(u.id)                AS usage_count,
       COUNT(DISTINCT u.game_id)  AS game_count
  FROM products p
  LEFT JOIN usages u ON u.product_id = p.id
 WHERE p.manufacturer_id = ?
 GROUP BY p.id
 ORDER BY p.name COLLATE NOCASE`, manufacturerID)
	if err != nil {
		return nil, fmt.Errorf("products by manufacturer %d: %w", manufacturerID, err)
	}
	defer rows.Close()

	var out []ManufacturerProduct
	for rows.Next() {
		var p ManufacturerProduct
		if err := rows.Scan(&p.ID, &p.Name, &p.Type, &p.Notes,
			&p.FirstRecordedUsage, &p.LastRecordedUsage,
			&p.UsageCount, &p.GameCount); err != nil {
			return nil, fmt.Errorf("scan manufacturer product: %w", err)
		}
		out = append(out, p)
	}
	return out, rows.Err()
}

func CreateManufacturer(ctx context.Context, db *sql.DB, name string) (int64, error) {
	res, err := db.ExecContext(ctx, `INSERT INTO manufacturers (name) VALUES (?)`, name)
	if err != nil {
		if isUniqueManufacturerName(err) {
			return 0, ErrManufacturerNameTaken
		}
		return 0, fmt.Errorf("create manufacturer: %w", err)
	}
	return res.LastInsertId()
}

func UpdateManufacturer(ctx context.Context, db *sql.DB, m Manufacturer) error {
	if _, err := db.ExecContext(ctx,
		`UPDATE manufacturers SET name = ? WHERE id = ?`, m.Name, m.ID); err != nil {
		if isUniqueManufacturerName(err) {
			return ErrManufacturerNameTaken
		}
		return fmt.Errorf("update manufacturer %d: %w", m.ID, err)
	}
	return nil
}

func DeleteManufacturer(ctx context.Context, db *sql.DB, id int64) error {
	if _, err := db.ExecContext(ctx, `DELETE FROM manufacturers WHERE id = ?`, id); err != nil {
		return fmt.Errorf("delete manufacturer %d: %w", id, err)
	}
	return nil
}

func isUniqueManufacturerName(err error) bool {
	return err != nil && strings.Contains(err.Error(), "UNIQUE constraint failed: manufacturers.name")
}

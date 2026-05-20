package queries

import (
	"context"
	"database/sql"
	"fmt"
)

type Product struct {
	ID                 int64
	ManufacturerID     int64
	Manufacturer       string
	Name               string
	Type               string
	Notes              string
	SourceProof        string
	FirstRecordedUsage string
	LastRecordedUsage  string
	CreatedAt          string
	UpdatedAt          string
}

func ListProducts(ctx context.Context, db *sql.DB, q string) ([]Product, error) {
	var (
		rows *sql.Rows
		err  error
	)
	base := `SELECT p.id, p.manufacturer_id, m.name,
	                p.name, COALESCE(p.type,''), COALESCE(p.notes,''),
	                COALESCE(p.source_proof,''), COALESCE(p.first_recorded_usage,''),
	                COALESCE(p.last_recorded_usage,''), p.created_at, p.updated_at
	         FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id`
	if q == "" {
		rows, err = db.QueryContext(ctx, base+` ORDER BY m.name COLLATE NOCASE, p.name COLLATE NOCASE`)
	} else {
		pat := "%" + q + "%"
		rows, err = db.QueryContext(ctx,
			base+` WHERE p.name LIKE ? COLLATE NOCASE OR m.name LIKE ? COLLATE NOCASE
			       ORDER BY m.name COLLATE NOCASE, p.name COLLATE NOCASE`, pat, pat)
	}
	if err != nil {
		return nil, fmt.Errorf("list products: %w", err)
	}
	defer rows.Close()

	var out []Product
	for rows.Next() {
		var p Product
		if err := rows.Scan(&p.ID, &p.ManufacturerID, &p.Manufacturer,
			&p.Name, &p.Type, &p.Notes, &p.SourceProof,
			&p.FirstRecordedUsage, &p.LastRecordedUsage,
			&p.CreatedAt, &p.UpdatedAt); err != nil {
			return nil, fmt.Errorf("scan product: %w", err)
		}
		out = append(out, p)
	}
	return out, rows.Err()
}

func GetProduct(ctx context.Context, db *sql.DB, id int64) (Product, error) {
	var p Product
	err := db.QueryRowContext(ctx,
		`SELECT p.id, p.manufacturer_id, m.name,
		        p.name, COALESCE(p.type,''), COALESCE(p.notes,''),
		        COALESCE(p.source_proof,''), COALESCE(p.first_recorded_usage,''),
		        COALESCE(p.last_recorded_usage,''), p.created_at, p.updated_at
		 FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id
		 WHERE p.id = ?`, id).Scan(
		&p.ID, &p.ManufacturerID, &p.Manufacturer,
		&p.Name, &p.Type, &p.Notes, &p.SourceProof,
		&p.FirstRecordedUsage, &p.LastRecordedUsage,
		&p.CreatedAt, &p.UpdatedAt)
	if err != nil {
		return Product{}, fmt.Errorf("get product %d: %w", id, err)
	}
	return p, nil
}

func ensureManufacturer(ctx context.Context, tx *sql.Tx, name string) (int64, error) {
	var id int64
	err := tx.QueryRowContext(ctx,
		`SELECT id FROM manufacturers WHERE name = ? COLLATE NOCASE`, name).Scan(&id)
	if err == nil {
		return id, nil
	}
	if err != sql.ErrNoRows {
		return 0, fmt.Errorf("lookup manufacturer %q: %w", name, err)
	}
	res, err := tx.ExecContext(ctx, `INSERT INTO manufacturers (name) VALUES (?)`, name)
	if err != nil {
		return 0, fmt.Errorf("insert manufacturer %q: %w", name, err)
	}
	return res.LastInsertId()
}

func CreateProduct(ctx context.Context, db *sql.DB, manufacturer string, p Product) (int64, error) {
	tx, err := db.BeginTx(ctx, nil)
	if err != nil {
		return 0, err
	}
	defer tx.Rollback()

	mid, err := ensureManufacturer(ctx, tx, manufacturer)
	if err != nil {
		return 0, err
	}
	res, err := tx.ExecContext(ctx,
		`INSERT INTO products (manufacturer_id, name, type, notes, source_proof,
		                       first_recorded_usage, last_recorded_usage)
		 VALUES (?, ?, ?, ?, ?, ?, ?)`,
		mid, p.Name, nullable(p.Type), nullable(p.Notes), nullable(p.SourceProof),
		nullable(p.FirstRecordedUsage), nullable(p.LastRecordedUsage))
	if err != nil {
		return 0, fmt.Errorf("create product: %w", err)
	}
	id, err := res.LastInsertId()
	if err != nil {
		return 0, err
	}
	return id, tx.Commit()
}

func UpdateProduct(ctx context.Context, db *sql.DB, manufacturer string, p Product) error {
	tx, err := db.BeginTx(ctx, nil)
	if err != nil {
		return err
	}
	defer tx.Rollback()

	mid, err := ensureManufacturer(ctx, tx, manufacturer)
	if err != nil {
		return err
	}
	if _, err := tx.ExecContext(ctx,
		`UPDATE products
		    SET manufacturer_id = ?, name = ?, type = ?, notes = ?,
		        source_proof = ?, first_recorded_usage = ?, last_recorded_usage = ?,
		        updated_at = datetime('now')
		  WHERE id = ?`,
		mid, p.Name, nullable(p.Type), nullable(p.Notes), nullable(p.SourceProof),
		nullable(p.FirstRecordedUsage), nullable(p.LastRecordedUsage), p.ID); err != nil {
		return fmt.Errorf("update product %d: %w", p.ID, err)
	}
	return tx.Commit()
}

func DeleteProduct(ctx context.Context, db *sql.DB, id int64) error {
	if _, err := db.ExecContext(ctx, `DELETE FROM products WHERE id = ?`, id); err != nil {
		return fmt.Errorf("delete product %d: %w", id, err)
	}
	return nil
}

type ProductSuggestion struct {
	ID    int64
	Label string
}

func SuggestProducts(ctx context.Context, db *sql.DB, q string, limit int) ([]ProductSuggestion, error) {
	if limit <= 0 {
		limit = 10
	}
	pat := "%" + q + "%"
	rows, err := db.QueryContext(ctx,
		`SELECT p.id, m.name || ' — ' || p.name
		   FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id
		  WHERE p.name LIKE ? COLLATE NOCASE OR m.name LIKE ? COLLATE NOCASE
		  ORDER BY m.name COLLATE NOCASE, p.name COLLATE NOCASE
		  LIMIT ?`, pat, pat, limit)
	if err != nil {
		return nil, fmt.Errorf("suggest products: %w", err)
	}
	defer rows.Close()

	var out []ProductSuggestion
	for rows.Next() {
		var s ProductSuggestion
		if err := rows.Scan(&s.ID, &s.Label); err != nil {
			return nil, fmt.Errorf("scan suggestion: %w", err)
		}
		out = append(out, s)
	}
	return out, rows.Err()
}

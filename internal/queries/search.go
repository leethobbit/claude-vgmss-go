package queries

import (
	"context"
	"database/sql"
	"fmt"
)

type SearchHit struct {
	Kind    string
	ID      int64
	Title   string
	Snippet string
}

func Search(ctx context.Context, db *sql.DB, q string, limit int) ([]SearchHit, error) {
	if limit <= 0 {
		limit = 50
	}
	pat := "%" + q + "%"
	rows, err := db.QueryContext(ctx, `
		SELECT 'game' AS kind, g.id, g.title,
		       COALESCE(g.platform,'') || ' / ' || COALESCE(g.composers,'')
		  FROM games g
		 WHERE g.title LIKE ? COLLATE NOCASE OR g.composers LIKE ? COLLATE NOCASE
		UNION ALL
		SELECT 'equipment', p.id, m.name || ' — ' || p.name, COALESCE(p.type,'')
		  FROM products p JOIN manufacturers m ON m.id = p.manufacturer_id
		 WHERE p.name LIKE ? COLLATE NOCASE OR m.name LIKE ? COLLATE NOCASE
		UNION ALL
		SELECT 'usage', u.id,
		       g.title || ' — ' || COALESCE(p.name, u.raw_source, '(unknown)'),
		       COALESCE(u.examples,'') || ' ' || COALESCE(u.notes,'')
		  FROM usages u
		  JOIN games g ON g.id = u.game_id
		  LEFT JOIN products p ON p.id = u.product_id
		 WHERE u.examples LIKE ? COLLATE NOCASE OR u.notes LIKE ? COLLATE NOCASE
		 LIMIT ?`,
		pat, pat, pat, pat, pat, pat, limit)
	if err != nil {
		return nil, fmt.Errorf("search: %w", err)
	}
	defer rows.Close()

	var out []SearchHit
	for rows.Next() {
		var h SearchHit
		if err := rows.Scan(&h.Kind, &h.ID, &h.Title, &h.Snippet); err != nil {
			return nil, fmt.Errorf("scan hit: %w", err)
		}
		out = append(out, h)
	}
	return out, rows.Err()
}

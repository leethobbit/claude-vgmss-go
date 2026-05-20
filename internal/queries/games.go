package queries

import (
	"context"
	"database/sql"
	"fmt"
	"strings"
)

type Game struct {
	ID                  int64
	Title               string
	Platform            string
	Released            string
	Composers           string
	ComposersNormalized string
	Notes               string
	CreatedAt           string
	UpdatedAt           string
}

func normalizeComposers(s string) string {
	parts := strings.Split(s, ",")
	out := make([]string, 0, len(parts))
	for _, p := range parts {
		p = strings.ToLower(strings.TrimSpace(p))
		if p != "" {
			out = append(out, p)
		}
	}
	return strings.Join(out, ", ")
}

func ListGames(ctx context.Context, db *sql.DB, q string) ([]Game, error) {
	var (
		rows *sql.Rows
		err  error
	)
	if q == "" {
		rows, err = db.QueryContext(ctx,
			`SELECT id, title, COALESCE(platform,''), COALESCE(released,''),
			        COALESCE(composers,''), COALESCE(composers_normalized,''),
			        COALESCE(notes,''), created_at, updated_at
			 FROM games ORDER BY title COLLATE NOCASE`)
	} else {
		pat := "%" + q + "%"
		rows, err = db.QueryContext(ctx,
			`SELECT id, title, COALESCE(platform,''), COALESCE(released,''),
			        COALESCE(composers,''), COALESCE(composers_normalized,''),
			        COALESCE(notes,''), created_at, updated_at
			 FROM games
			 WHERE title LIKE ? COLLATE NOCASE
			    OR platform LIKE ? COLLATE NOCASE
			    OR composers LIKE ? COLLATE NOCASE
			 ORDER BY title COLLATE NOCASE`, pat, pat, pat)
	}
	if err != nil {
		return nil, fmt.Errorf("list games: %w", err)
	}
	defer rows.Close()

	var out []Game
	for rows.Next() {
		var g Game
		if err := rows.Scan(&g.ID, &g.Title, &g.Platform, &g.Released,
			&g.Composers, &g.ComposersNormalized, &g.Notes, &g.CreatedAt, &g.UpdatedAt); err != nil {
			return nil, fmt.Errorf("scan game: %w", err)
		}
		out = append(out, g)
	}
	return out, rows.Err()
}

func GetGame(ctx context.Context, db *sql.DB, id int64) (Game, error) {
	var g Game
	err := db.QueryRowContext(ctx,
		`SELECT id, title, COALESCE(platform,''), COALESCE(released,''),
		        COALESCE(composers,''), COALESCE(composers_normalized,''),
		        COALESCE(notes,''), created_at, updated_at
		 FROM games WHERE id = ?`, id).Scan(
		&g.ID, &g.Title, &g.Platform, &g.Released,
		&g.Composers, &g.ComposersNormalized, &g.Notes, &g.CreatedAt, &g.UpdatedAt)
	if err != nil {
		return Game{}, fmt.Errorf("get game %d: %w", id, err)
	}
	return g, nil
}

func CreateGame(ctx context.Context, db *sql.DB, g Game) (int64, error) {
	res, err := db.ExecContext(ctx,
		`INSERT INTO games (title, platform, released, composers, composers_normalized, notes)
		 VALUES (?, ?, ?, ?, ?, ?)`,
		g.Title, nullable(g.Platform), nullable(g.Released),
		nullable(g.Composers), nullable(normalizeComposers(g.Composers)), nullable(g.Notes))
	if err != nil {
		return 0, fmt.Errorf("create game: %w", err)
	}
	return res.LastInsertId()
}

func UpdateGame(ctx context.Context, db *sql.DB, g Game) error {
	_, err := db.ExecContext(ctx,
		`UPDATE games
		    SET title = ?, platform = ?, released = ?, composers = ?,
		        composers_normalized = ?, notes = ?,
		        updated_at = datetime('now')
		  WHERE id = ?`,
		g.Title, nullable(g.Platform), nullable(g.Released),
		nullable(g.Composers), nullable(normalizeComposers(g.Composers)),
		nullable(g.Notes), g.ID)
	if err != nil {
		return fmt.Errorf("update game %d: %w", g.ID, err)
	}
	return nil
}

func DeleteGame(ctx context.Context, db *sql.DB, id int64) error {
	if _, err := db.ExecContext(ctx, `DELETE FROM games WHERE id = ?`, id); err != nil {
		return fmt.Errorf("delete game %d: %w", id, err)
	}
	return nil
}

func nullable(s string) any {
	if strings.TrimSpace(s) == "" {
		return nil
	}
	return s
}

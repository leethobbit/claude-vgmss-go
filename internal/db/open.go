package db

import (
	"database/sql"
	"fmt"

	_ "modernc.org/sqlite"
)

func Open(path string) (*sql.DB, error) {
	dsn := fmt.Sprintf("file:%s?_pragma=foreign_keys(1)&_pragma=journal_mode(WAL)&_pragma=busy_timeout(5000)", path)
	d, err := sql.Open("sqlite", dsn)
	if err != nil {
		return nil, fmt.Errorf("open sqlite at %s: %w", path, err)
	}
	if err := d.Ping(); err != nil {
		_ = d.Close()
		return nil, fmt.Errorf("ping sqlite at %s: %w", path, err)
	}
	d.SetMaxOpenConns(1)
	return d, nil
}

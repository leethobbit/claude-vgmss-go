CREATE TABLE manufacturers (
  id   INTEGER PRIMARY KEY,
  name TEXT NOT NULL COLLATE NOCASE UNIQUE
);

CREATE TABLE products (
  id                   INTEGER PRIMARY KEY,
  manufacturer_id      INTEGER NOT NULL REFERENCES manufacturers(id) ON DELETE RESTRICT,
  name                 TEXT NOT NULL,
  type                 TEXT CHECK (type IS NULL OR type IN
                         ('DAW','Hardware','Synth','Effect','Instrument','Sample Library')),
  notes                TEXT,
  source_proof         TEXT,
  first_recorded_usage TEXT,
  last_recorded_usage  TEXT,
  created_at           TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at           TEXT NOT NULL DEFAULT (datetime('now')),
  UNIQUE (manufacturer_id, name COLLATE NOCASE)
);

CREATE TABLE games (
  id                    INTEGER PRIMARY KEY,
  title                 TEXT NOT NULL,
  platform              TEXT,
  released              TEXT,
  composers             TEXT,
  composers_normalized  TEXT,
  notes                 TEXT,
  created_at            TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at            TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE INDEX games_by_title ON games(title COLLATE NOCASE);

CREATE TABLE usages (
  id            INTEGER PRIMARY KEY,
  game_id       INTEGER NOT NULL REFERENCES games(id) ON DELETE CASCADE,
  product_id    INTEGER REFERENCES products(id) ON DELETE RESTRICT,
  raw_source    TEXT,
  path_bank     TEXT,
  preset        TEXT,
  sample_label  TEXT,
  sample_ref    TEXT,
  notes         TEXT,
  examples      TEXT,
  demo_url      TEXT,
  category      TEXT NOT NULL DEFAULT 'main'
                  CHECK (category IN ('main','unused','bonus','stuff_to_find')),
  source_family TEXT NOT NULL DEFAULT 'newer_vgm'
                  CHECK (source_family IN ('newer_vgm','ff_detailed','hoyo_mix','g_boy_viss')),
  position      INTEGER,
  created_at    TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at    TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE INDEX usages_by_game    ON usages(game_id, position);
CREATE INDEX usages_by_product ON usages(product_id);

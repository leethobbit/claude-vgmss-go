-- Add 'soundtemp' to the usages.source_family CHECK constraint.
-- SQLite does not allow modifying CHECK constraints in place;
-- recreate the table, copy data, drop old, rename new.
-- The migrator wraps each .sql file in BeginTx so this is atomic.
-- usages is a leaf (referenced by no other table) so the drop+rename
-- causes no FK breakage.

CREATE TABLE usages_new (
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
                  CHECK (source_family IN ('newer_vgm','ff_detailed','hoyo_mix','g_boy_viss','soundtemp')),
  position      INTEGER,
  created_at    TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at    TEXT NOT NULL DEFAULT (datetime('now'))
);

INSERT INTO usages_new
  SELECT id, game_id, product_id, raw_source, path_bank, preset,
         sample_label, sample_ref, notes, examples, demo_url,
         category, source_family, position, created_at, updated_at
    FROM usages;

DROP TABLE usages;
ALTER TABLE usages_new RENAME TO usages;
CREATE INDEX usages_by_game    ON usages(game_id, position);
CREATE INDEX usages_by_product ON usages(product_id);

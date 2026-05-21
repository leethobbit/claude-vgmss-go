package app

import (
	"database/sql"
	"embed"
	"io/fs"
	"log/slog"
	"net/http"
)

type App struct {
	DB        *sql.DB
	Templates *Templates
	Logger    *slog.Logger
	Static    fs.FS
}

func New(db *sql.DB, tpl *Templates, logger *slog.Logger, static embed.FS) *App {
	sub, err := fs.Sub(static, "web/static")
	if err != nil {
		logger.Error("static sub fs", "err", err)
	}
	return &App{DB: db, Templates: tpl, Logger: logger, Static: sub}
}

func (a *App) Routes() *http.ServeMux {
	mux := http.NewServeMux()

	mux.Handle("GET /static/", http.StripPrefix("/static/", http.FileServerFS(a.Static)))

	mux.HandleFunc("GET /healthz", func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		_, _ = w.Write([]byte("ok"))
	})

	mux.HandleFunc("GET /", a.handleIndex)

	mux.HandleFunc("GET /games", a.listGames)
	mux.HandleFunc("GET /games/new", a.newGameForm)
	mux.HandleFunc("POST /games", a.createGame)
	mux.HandleFunc("GET /games/{id}", a.showGame)
	mux.HandleFunc("GET /games/{id}/edit", a.editGameForm)
	mux.HandleFunc("POST /games/{id}", a.updateGame)
	mux.HandleFunc("POST /games/{id}/delete", a.deleteGame)
	mux.HandleFunc("GET /games/{id}/usages/new", a.newUsageFromGameForm)
	mux.HandleFunc("POST /games/{id}/usages", a.createUsageFromGame)

	mux.HandleFunc("GET /equipment", a.listEquipment)
	mux.HandleFunc("GET /equipment/new", a.newEquipmentForm)
	mux.HandleFunc("POST /equipment", a.createEquipment)
	mux.HandleFunc("GET /equipment/{id}", a.showEquipment)
	mux.HandleFunc("GET /equipment/{id}/edit", a.editEquipmentForm)
	mux.HandleFunc("POST /equipment/{id}", a.updateEquipment)
	mux.HandleFunc("POST /equipment/{id}/delete", a.deleteEquipment)
	mux.HandleFunc("GET /equipment/{id}/usages/new", a.newUsageFromEquipmentForm)
	mux.HandleFunc("POST /equipment/{id}/usages", a.createUsageFromEquipment)

	mux.HandleFunc("GET /manufacturers", a.listManufacturers)
	mux.HandleFunc("GET /manufacturers/new", a.newManufacturerForm)
	mux.HandleFunc("POST /manufacturers", a.createManufacturer)
	mux.HandleFunc("GET /manufacturers/{id}", a.showManufacturer)
	mux.HandleFunc("GET /manufacturers/{id}/edit", a.editManufacturerForm)
	mux.HandleFunc("POST /manufacturers/{id}", a.updateManufacturer)
	mux.HandleFunc("POST /manufacturers/{id}/delete", a.deleteManufacturer)

	mux.HandleFunc("GET /usages/{id}/edit", a.editUsageForm)
	mux.HandleFunc("POST /usages/{id}", a.updateUsage)
	mux.HandleFunc("POST /usages/{id}/delete", a.deleteUsage)

	mux.HandleFunc("GET /search", a.search)
	mux.HandleFunc("GET /products/suggest", a.suggestProducts)

	return mux
}

func (a *App) handleIndex(w http.ResponseWriter, r *http.Request) {
	if r.URL.Path != "/" {
		http.NotFound(w, r)
		return
	}
	a.render(w, r, http.StatusOK, "index.html", nil)
}

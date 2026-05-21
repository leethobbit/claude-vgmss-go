package main

import (
	"context"
	"flag"
	"log/slog"
	"net/http"
	"os"
	"os/signal"
	"syscall"
	"time"

	vgmss "github.com/leethobbit/vgmss"
	"github.com/leethobbit/vgmss/internal/app"
	"github.com/leethobbit/vgmss/internal/db"
	"github.com/leethobbit/vgmss/internal/migrate"
)

func main() {
	addr := flag.String("addr", "127.0.0.1:8220", "listen address (default 127.0.0.1:8220)")
	dbPath := flag.String("db", envOr("VGMSS_DB", "data/vgmss.db"), "sqlite database path")
	flag.Parse()

	logger := slog.New(slog.NewTextHandler(os.Stdout, &slog.HandlerOptions{Level: slog.LevelInfo}))

	if err := os.MkdirAll(dirOf(*dbPath), 0o755); err != nil {
		logger.Error("mkdir db parent", "path", *dbPath, "err", err)
		os.Exit(1)
	}

	d, err := db.Open(*dbPath)
	if err != nil {
		logger.Error("open db", "err", err)
		os.Exit(1)
	}
	defer d.Close()

	ctx, cancel := signal.NotifyContext(context.Background(), syscall.SIGINT, syscall.SIGTERM)
	defer cancel()

	if err := migrate.Run(ctx, d); err != nil {
		logger.Error("migrate schema", "err", err)
		os.Exit(1)
	}
	logger.Info("schema migrations applied")

	if err := migrate.Seed(ctx, d); err != nil {
		logger.Error("seed", "err", err)
		os.Exit(1)
	}
	logger.Info("seed migrations applied")

	tpl, err := app.LoadTemplates(vgmss.Assets)
	if err != nil {
		logger.Error("load templates", "err", err)
		os.Exit(1)
	}

	a := app.New(d, tpl, logger, vgmss.Assets)
	srv := &http.Server{
		Addr:              *addr,
		Handler:           withLogging(logger, a.Routes()),
		ReadHeaderTimeout: 5 * time.Second,
	}

	go func() {
		logger.Info("listening", "addr", *addr, "db", *dbPath)
		if err := srv.ListenAndServe(); err != nil && err != http.ErrServerClosed {
			logger.Error("server", "err", err)
			cancel()
		}
	}()

	<-ctx.Done()
	logger.Info("shutting down")
	shutdownCtx, c2 := context.WithTimeout(context.Background(), 5*time.Second)
	defer c2()
	if err := srv.Shutdown(shutdownCtx); err != nil {
		logger.Error("shutdown", "err", err)
	}
}

func withLogging(logger *slog.Logger, next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		start := time.Now()
		next.ServeHTTP(w, r)
		logger.Info("http",
			"method", r.Method,
			"path", r.URL.Path,
			"dur_ms", time.Since(start).Milliseconds())
	})
}

func envOr(key, fallback string) string {
	if v := os.Getenv(key); v != "" {
		return v
	}
	return fallback
}

func dirOf(p string) string {
	for i := len(p) - 1; i >= 0; i-- {
		if p[i] == '/' || p[i] == '\\' {
			return p[:i]
		}
	}
	return "."
}

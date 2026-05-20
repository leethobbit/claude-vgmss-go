package app

import (
	"bytes"
	"fmt"
	"net/http"
	"strconv"
)

func (a *App) render(w http.ResponseWriter, r *http.Request, status int, name string, data any) {
	var buf bytes.Buffer
	if err := a.Templates.ExecuteTemplate(&buf, name, data); err != nil {
		a.Logger.Error("template execute", "name", name, "err", err)
		http.Error(w, "template error: "+err.Error(), http.StatusInternalServerError)
		return
	}
	w.Header().Set("Content-Type", "text/html; charset=utf-8")
	w.WriteHeader(status)
	_, _ = buf.WriteTo(w)
}

func (a *App) renderPartial(w http.ResponseWriter, name string, data any) {
	var buf bytes.Buffer
	if err := a.Templates.ExecuteTemplate(&buf, name, data); err != nil {
		a.Logger.Error("partial execute", "name", name, "err", err)
		http.Error(w, "template error: "+err.Error(), http.StatusInternalServerError)
		return
	}
	w.Header().Set("Content-Type", "text/html; charset=utf-8")
	_, _ = buf.WriteTo(w)
}

func (a *App) serverError(w http.ResponseWriter, r *http.Request, err error) {
	a.Logger.Error("server error",
		"method", r.Method, "path", r.URL.Path, "err", err)
	http.Error(w, fmt.Sprintf("internal error: %s", err), http.StatusInternalServerError)
}

func pathID(r *http.Request) (int64, error) {
	raw := r.PathValue("id")
	n, err := strconv.ParseInt(raw, 10, 64)
	if err != nil {
		return 0, fmt.Errorf("invalid id %q: %w", raw, err)
	}
	return n, nil
}

package app

import (
	"database/sql"
	"net/http"
	"strconv"

	"github.com/itpie/vgmss/internal/queries"
)

func (a *App) newUsageFromGameForm(w http.ResponseWriter, r *http.Request) {
	gid, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	g, err := queries.GetGame(r.Context(), a.DB, gid)
	if err != nil {
		http.NotFound(w, r)
		return
	}
	data := usageFormData{
		Usage:        queries.Usage{GameID: gid, GameTitle: g.Title, Category: "main", SourceFamily: "newer_vgm"},
		Action:       "/games/" + intStr(gid) + "/usages",
		LockGame:     true,
		PrefilledGameTitle: g.Title,
	}
	a.render(w, r, http.StatusOK, "usages_form.html", data)
}

func (a *App) newUsageFromEquipmentForm(w http.ResponseWriter, r *http.Request) {
	pid, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	p, err := queries.GetProduct(r.Context(), a.DB, pid)
	if err != nil {
		http.NotFound(w, r)
		return
	}
	data := usageFormData{
		Usage: queries.Usage{
			ProductID:    sql.NullInt64{Int64: pid, Valid: true},
			ProductName:  p.Name,
			Manufacturer: p.Manufacturer,
			Category:     "main",
			SourceFamily: "newer_vgm",
		},
		Action:               "/equipment/" + intStr(pid) + "/usages",
		LockProduct:          true,
		PrefilledProductLabel: p.Manufacturer + " — " + p.Name,
	}
	a.render(w, r, http.StatusOK, "usages_form.html", data)
}

func (a *App) editUsageForm(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	u, err := queries.GetUsage(r.Context(), a.DB, id)
	if err != nil {
		http.NotFound(w, r)
		return
	}
	prefilled := ""
	if u.ProductID.Valid {
		prefilled = u.Manufacturer + " — " + u.ProductName
	}
	data := usageFormData{
		Usage:                 u,
		Action:                "/usages/" + intStr(id),
		PrefilledGameTitle:    u.GameTitle,
		PrefilledProductLabel: prefilled,
	}
	a.render(w, r, http.StatusOK, "usages_form.html", data)
}

func (a *App) createUsageFromGame(w http.ResponseWriter, r *http.Request) {
	gid, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	if err := r.ParseForm(); err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	u := usageFromForm(r)
	u.GameID = gid
	id, err := queries.CreateUsage(r.Context(), a.DB, u)
	if err != nil {
		a.serverError(w, r, err)
		return
	}
	_ = id
	http.Redirect(w, r, "/games/"+intStr(gid), http.StatusSeeOther)
}

func (a *App) createUsageFromEquipment(w http.ResponseWriter, r *http.Request) {
	pid, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	if err := r.ParseForm(); err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	u := usageFromForm(r)
	u.ProductID = sql.NullInt64{Int64: pid, Valid: true}
	if u.GameID == 0 {
		http.Error(w, "game_id required", http.StatusBadRequest)
		return
	}
	if _, err := queries.CreateUsage(r.Context(), a.DB, u); err != nil {
		a.serverError(w, r, err)
		return
	}
	http.Redirect(w, r, "/equipment/"+intStr(pid), http.StatusSeeOther)
}

func (a *App) updateUsage(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	if err := r.ParseForm(); err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	u := usageFromForm(r)
	u.ID = id
	if u.GameID == 0 {
		http.Error(w, "game_id required", http.StatusBadRequest)
		return
	}
	if err := queries.UpdateUsage(r.Context(), a.DB, u); err != nil {
		a.serverError(w, r, err)
		return
	}
	http.Redirect(w, r, "/games/"+intStr(u.GameID), http.StatusSeeOther)
}

func (a *App) deleteUsage(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	u, err := queries.GetUsage(r.Context(), a.DB, id)
	if err != nil {
		http.NotFound(w, r)
		return
	}
	if err := queries.DeleteUsage(r.Context(), a.DB, id); err != nil {
		a.serverError(w, r, err)
		return
	}
	http.Redirect(w, r, "/games/"+intStr(u.GameID), http.StatusSeeOther)
}

type usageFormData struct {
	Usage                 queries.Usage
	Action                string
	LockGame              bool
	LockProduct           bool
	PrefilledGameTitle    string
	PrefilledProductLabel string
}

func usageFromForm(r *http.Request) queries.Usage {
	u := queries.Usage{
		RawSource:    r.PostForm.Get("raw_source"),
		PathBank:     r.PostForm.Get("path_bank"),
		Preset:       r.PostForm.Get("preset"),
		SampleLabel:  r.PostForm.Get("sample_label"),
		SampleRef:    r.PostForm.Get("sample_ref"),
		Notes:        r.PostForm.Get("notes"),
		Examples:     r.PostForm.Get("examples"),
		DemoURL:      r.PostForm.Get("demo_url"),
		Category:     defaultStr(r.PostForm.Get("category"), "main"),
		SourceFamily: defaultStr(r.PostForm.Get("source_family"), "newer_vgm"),
	}
	if v := r.PostForm.Get("game_id"); v != "" {
		if n, err := strconv.ParseInt(v, 10, 64); err == nil {
			u.GameID = n
		}
	}
	if v := r.PostForm.Get("product_id"); v != "" {
		if n, err := strconv.ParseInt(v, 10, 64); err == nil {
			u.ProductID = sql.NullInt64{Int64: n, Valid: true}
		}
	}
	if v := r.PostForm.Get("position"); v != "" {
		if n, err := strconv.ParseInt(v, 10, 64); err == nil {
			u.Position = sql.NullInt64{Int64: n, Valid: true}
		}
	}
	return u
}

func defaultStr(s, fallback string) string {
	if s == "" {
		return fallback
	}
	return s
}

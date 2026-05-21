package app

import (
	"net/http"

	"github.com/leethobbit/vgmss/internal/queries"
)

func (a *App) search(w http.ResponseWriter, r *http.Request) {
	q := r.URL.Query().Get("q")
	var hits []queries.SearchHit
	if q != "" {
		h, err := queries.Search(r.Context(), a.DB, q, 100)
		if err != nil {
			a.serverError(w, r, err)
			return
		}
		hits = h
	}
	data := struct {
		Query string
		Hits  []queries.SearchHit
	}{Query: q, Hits: hits}

	if r.Header.Get("HX-Request") == "true" {
		a.renderPartial(w, "search_results.html", data)
		return
	}
	a.render(w, r, http.StatusOK, "search.html", data)
}

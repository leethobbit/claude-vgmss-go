package app

import (
	"net/http"

	"github.com/leethobbit/vgmss/internal/queries"
)

func (a *App) listGames(w http.ResponseWriter, r *http.Request) {
	q := r.URL.Query().Get("q")
	games, err := queries.ListGames(r.Context(), a.DB, q)
	if err != nil {
		a.serverError(w, r, err)
		return
	}
	data := struct {
		Query string
		Games []queries.Game
	}{Query: q, Games: games}

	if r.Header.Get("HX-Request") == "true" {
		a.renderPartial(w, "games_list.html", data)
		return
	}
	a.render(w, r, http.StatusOK, "games_index.html", data)
}

func (a *App) showGame(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	g, err := queries.GetGame(r.Context(), a.DB, id)
	if err != nil {
		http.NotFound(w, r)
		return
	}
	usages, err := queries.UsagesByGame(r.Context(), a.DB, id)
	if err != nil {
		a.serverError(w, r, err)
		return
	}
	freq, err := queries.ProductFrequencyByGame(r.Context(), a.DB, id)
	if err != nil {
		a.serverError(w, r, err)
		return
	}
	data := struct {
		Game        queries.Game
		Usages      []queries.Usage
		ProductFreq []queries.ProductFrequency
	}{Game: g, Usages: usages, ProductFreq: freq}
	a.render(w, r, http.StatusOK, "games_detail.html", data)
}

func (a *App) newGameForm(w http.ResponseWriter, r *http.Request) {
	a.render(w, r, http.StatusOK, "games_form.html", struct {
		Game   queries.Game
		Action string
	}{Action: "/games"})
}

func (a *App) editGameForm(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	g, err := queries.GetGame(r.Context(), a.DB, id)
	if err != nil {
		http.NotFound(w, r)
		return
	}
	a.render(w, r, http.StatusOK, "games_form.html", struct {
		Game   queries.Game
		Action string
	}{Game: g, Action: r.URL.Path[:len(r.URL.Path)-len("/edit")]})
}

func (a *App) createGame(w http.ResponseWriter, r *http.Request) {
	if err := r.ParseForm(); err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	g := gameFromForm(r)
	if g.Title == "" {
		http.Error(w, "title required", http.StatusBadRequest)
		return
	}
	id, err := queries.CreateGame(r.Context(), a.DB, g)
	if err != nil {
		a.serverError(w, r, err)
		return
	}
	http.Redirect(w, r, gamePath(id), http.StatusSeeOther)
}

func (a *App) updateGame(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	if err := r.ParseForm(); err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	g := gameFromForm(r)
	g.ID = id
	if g.Title == "" {
		http.Error(w, "title required", http.StatusBadRequest)
		return
	}
	if err := queries.UpdateGame(r.Context(), a.DB, g); err != nil {
		a.serverError(w, r, err)
		return
	}
	http.Redirect(w, r, gamePath(id), http.StatusSeeOther)
}

func (a *App) deleteGame(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	if err := queries.DeleteGame(r.Context(), a.DB, id); err != nil {
		a.serverError(w, r, err)
		return
	}
	http.Redirect(w, r, "/games", http.StatusSeeOther)
}

func gameFromForm(r *http.Request) queries.Game {
	return queries.Game{
		Title:     r.PostForm.Get("title"),
		Platform:  r.PostForm.Get("platform"),
		Released:  r.PostForm.Get("released"),
		Composers: r.PostForm.Get("composers"),
		Notes:     r.PostForm.Get("notes"),
	}
}

func gamePath(id int64) string {
	return "/games/" + intStr(id)
}

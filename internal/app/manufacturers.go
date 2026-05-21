package app

import (
	"errors"
	"net/http"
	"strings"

	"github.com/leethobbit/vgmss/internal/queries"
)

func (a *App) listManufacturers(w http.ResponseWriter, r *http.Request) {
	q := r.URL.Query().Get("q")
	mfrs, err := queries.ListManufacturers(r.Context(), a.DB, q)
	if err != nil {
		a.serverError(w, r, err)
		return
	}
	data := struct {
		Query         string
		Manufacturers []queries.Manufacturer
	}{Query: q, Manufacturers: mfrs}
	if r.Header.Get("HX-Request") == "true" {
		a.renderPartial(w, "manufacturers_list.html", data)
		return
	}
	a.render(w, r, http.StatusOK, "manufacturers_index.html", data)
}

func (a *App) showManufacturer(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	m, err := queries.GetManufacturer(r.Context(), a.DB, id)
	if err != nil {
		http.NotFound(w, r)
		return
	}
	products, err := queries.ProductsByManufacturer(r.Context(), a.DB, id)
	if err != nil {
		a.serverError(w, r, err)
		return
	}
	data := struct {
		Manufacturer queries.Manufacturer
		Products     []queries.ManufacturerProduct
	}{Manufacturer: m, Products: products}
	a.render(w, r, http.StatusOK, "manufacturers_detail.html", data)
}

func (a *App) newManufacturerForm(w http.ResponseWriter, r *http.Request) {
	a.render(w, r, http.StatusOK, "manufacturers_form.html", struct {
		Manufacturer queries.Manufacturer
		Action       string
	}{Action: "/manufacturers"})
}

func (a *App) editManufacturerForm(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	m, err := queries.GetManufacturer(r.Context(), a.DB, id)
	if err != nil {
		http.NotFound(w, r)
		return
	}
	a.render(w, r, http.StatusOK, "manufacturers_form.html", struct {
		Manufacturer queries.Manufacturer
		Action       string
	}{Manufacturer: m, Action: r.URL.Path[:len(r.URL.Path)-len("/edit")]})
}

func (a *App) createManufacturer(w http.ResponseWriter, r *http.Request) {
	if err := r.ParseForm(); err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	name := strings.TrimSpace(r.PostForm.Get("name"))
	if name == "" {
		http.Error(w, "name required", http.StatusBadRequest)
		return
	}
	id, err := queries.CreateManufacturer(r.Context(), a.DB, name)
	if err != nil {
		if errors.Is(err, queries.ErrManufacturerNameTaken) {
			http.Error(w, "a manufacturer with that name already exists", http.StatusConflict)
			return
		}
		a.serverError(w, r, err)
		return
	}
	http.Redirect(w, r, "/manufacturers/"+intStr(id), http.StatusSeeOther)
}

func (a *App) updateManufacturer(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	if err := r.ParseForm(); err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	name := strings.TrimSpace(r.PostForm.Get("name"))
	if name == "" {
		http.Error(w, "name required", http.StatusBadRequest)
		return
	}
	if err := queries.UpdateManufacturer(r.Context(), a.DB, queries.Manufacturer{ID: id, Name: name}); err != nil {
		if errors.Is(err, queries.ErrManufacturerNameTaken) {
			http.Error(w, "a manufacturer with that name already exists", http.StatusConflict)
			return
		}
		a.serverError(w, r, err)
		return
	}
	http.Redirect(w, r, "/manufacturers/"+intStr(id), http.StatusSeeOther)
}

func (a *App) deleteManufacturer(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	if err := queries.DeleteManufacturer(r.Context(), a.DB, id); err != nil {
		http.Error(w, "cannot delete: "+err.Error(), http.StatusConflict)
		return
	}
	http.Redirect(w, r, "/manufacturers", http.StatusSeeOther)
}

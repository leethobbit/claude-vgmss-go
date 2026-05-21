package app

import (
	"net/http"
	"strconv"

	"github.com/leethobbit/vgmss/internal/queries"
)

func (a *App) listEquipment(w http.ResponseWriter, r *http.Request) {
	q := r.URL.Query().Get("q")
	products, err := queries.ListProducts(r.Context(), a.DB, q)
	if err != nil {
		a.serverError(w, r, err)
		return
	}
	data := struct {
		Query    string
		Products []queries.Product
	}{Query: q, Products: products}
	if r.Header.Get("HX-Request") == "true" {
		a.renderPartial(w, "equipment_list.html", data)
		return
	}
	a.render(w, r, http.StatusOK, "equipment_index.html", data)
}

func (a *App) showEquipment(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	p, err := queries.GetProduct(r.Context(), a.DB, id)
	if err != nil {
		http.NotFound(w, r)
		return
	}
	usages, err := queries.UsagesByProduct(r.Context(), a.DB, id)
	if err != nil {
		a.serverError(w, r, err)
		return
	}
	data := struct {
		Product queries.Product
		Usages  []queries.Usage
	}{Product: p, Usages: usages}
	a.render(w, r, http.StatusOK, "equipment_detail.html", data)
}

func (a *App) newEquipmentForm(w http.ResponseWriter, r *http.Request) {
	a.render(w, r, http.StatusOK, "equipment_form.html", struct {
		Product queries.Product
		Action  string
	}{Action: "/equipment"})
}

func (a *App) editEquipmentForm(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	p, err := queries.GetProduct(r.Context(), a.DB, id)
	if err != nil {
		http.NotFound(w, r)
		return
	}
	a.render(w, r, http.StatusOK, "equipment_form.html", struct {
		Product queries.Product
		Action  string
	}{Product: p, Action: r.URL.Path[:len(r.URL.Path)-len("/edit")]})
}

func (a *App) createEquipment(w http.ResponseWriter, r *http.Request) {
	if err := r.ParseForm(); err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	manuf, p := productFromForm(r)
	if manuf == "" || p.Name == "" {
		http.Error(w, "manufacturer and name required", http.StatusBadRequest)
		return
	}
	id, err := queries.CreateProduct(r.Context(), a.DB, manuf, p)
	if err != nil {
		a.serverError(w, r, err)
		return
	}
	http.Redirect(w, r, "/equipment/"+intStr(id), http.StatusSeeOther)
}

func (a *App) updateEquipment(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	if err := r.ParseForm(); err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	manuf, p := productFromForm(r)
	p.ID = id
	if manuf == "" || p.Name == "" {
		http.Error(w, "manufacturer and name required", http.StatusBadRequest)
		return
	}
	if err := queries.UpdateProduct(r.Context(), a.DB, manuf, p); err != nil {
		a.serverError(w, r, err)
		return
	}
	http.Redirect(w, r, "/equipment/"+intStr(id), http.StatusSeeOther)
}

func (a *App) deleteEquipment(w http.ResponseWriter, r *http.Request) {
	id, err := pathID(r)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	if err := queries.DeleteProduct(r.Context(), a.DB, id); err != nil {
		http.Error(w, "cannot delete: "+err.Error(), http.StatusConflict)
		return
	}
	http.Redirect(w, r, "/equipment", http.StatusSeeOther)
}

func (a *App) suggestProducts(w http.ResponseWriter, r *http.Request) {
	q := r.URL.Query().Get("q")
	if q == "" {
		a.renderPartial(w, "product_suggestions.html", nil)
		return
	}
	suggestions, err := queries.SuggestProducts(r.Context(), a.DB, q, 10)
	if err != nil {
		a.serverError(w, r, err)
		return
	}
	a.renderPartial(w, "product_suggestions.html", suggestions)
}

func productFromForm(r *http.Request) (string, queries.Product) {
	return r.PostForm.Get("manufacturer"), queries.Product{
		Name:               r.PostForm.Get("name"),
		Type:               r.PostForm.Get("type"),
		Notes:              r.PostForm.Get("notes"),
		SourceProof:        r.PostForm.Get("source_proof"),
		FirstRecordedUsage: r.PostForm.Get("first_recorded_usage"),
		LastRecordedUsage:  r.PostForm.Get("last_recorded_usage"),
	}
}

func intStr(n int64) string { return strconv.FormatInt(n, 10) }

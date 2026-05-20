package app

import (
	"embed"
	"fmt"
	"html/template"
)

type Templates struct {
	pages    map[string]*template.Template
	partials *template.Template
}

func LoadTemplates(fs embed.FS) (*Templates, error) {
	pageNames := []string{
		"index.html",
		"games_index.html",
		"games_detail.html",
		"games_form.html",
		"equipment_index.html",
		"equipment_detail.html",
		"equipment_form.html",
		"usages_form.html",
		"search.html",
	}
	out := &Templates{pages: map[string]*template.Template{}}
	for _, name := range pageNames {
		t, err := template.New("layout.html").Funcs(funcs).ParseFS(fs,
			"web/templates/layout.html",
			"web/templates/partials/*.html",
			"web/templates/pages/"+name)
		if err != nil {
			return nil, fmt.Errorf("parse page %s: %w", name, err)
		}
		out.pages[name] = t
	}

	partials, err := template.New("").Funcs(funcs).ParseFS(fs,
		"web/templates/partials/*.html")
	if err != nil {
		return nil, fmt.Errorf("parse partials: %w", err)
	}
	out.partials = partials

	return out, nil
}

func (t *Templates) ExecuteTemplate(w writer, name string, data any) error {
	if p, ok := t.pages[name]; ok {
		return p.ExecuteTemplate(w, "layout.html", data)
	}
	return t.partials.ExecuteTemplate(w, name, data)
}

type writer interface {
	Write(p []byte) (n int, err error)
}

var funcs = template.FuncMap{
	"add": func(a, b int) int { return a + b },
}

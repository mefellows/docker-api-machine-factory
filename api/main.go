package main

import (
	"fmt"
	"net/http"

	"github.com/zenazn/goji"
	"github.com/zenazn/goji/web"
)

func hello(c web.C, w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, Guten Tag, Ciao, %s!", c.URLParams["name"])
}

func goodbye(c web.C, w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Goodbye, Aufwiedersen, %s!", c.URLParams["state"])
}

func main() {
	goji.Get("/goodbye/:state", goodbye)
	goji.Get("/hello/:name", hello)
	goji.Serve()
}

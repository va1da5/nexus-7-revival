// https://gobyexample.com/http-servers
package main

import (
	"fmt"
	"net/http"
	"os/exec"
	"runtime"
)

func index(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(w, "Hello world!\n")
}

func headers(w http.ResponseWriter, req *http.Request) {
	for name, headers := range req.Header {
		for _, h := range headers {
			fmt.Fprintf(w, "%v: %v\n", name, h)
		}
	}
}

func main() {
	http.HandleFunc("/", index)
	http.HandleFunc("/headers", headers)

	if runtime.GOARCH == "arm" {
		exec.Command("am", "start", "-a", "android.intent.action.VIEW", "-d", "http://127.0.0.1:8090").Output()
		fmt.Println("Started WebView")
	}

	fmt.Println("Server running on http://127.0.0.1:8090")
	http.ListenAndServe(":8090", nil)
}

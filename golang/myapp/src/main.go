package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(writer http.ResponseWriter, request *http.Request) {
		fmt.Fprintf(writer, "hello, world")
	})
	
	if err := http.ListenAndServe(":8080", nil); err != nil{
		log.Fatal("ListenAndServe failed", err)
	}
}

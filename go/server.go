package main

import (
    "fmt"
    "log"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprint(w, "ok")
}

func main() {
    http.HandleFunc("/", handler) // Обработчик для всех запросов на "/"

    log.Printf("Сервер запущен на порту 1234")
    err := http.ListenAndServe(":1234", nil)
    if err != nil {
        log.Fatal("Ошибка запуска сервера:", err)
    }
}


package main

import "os"
import "fmt"

func main() {
    args := os.Args
    argc := len(args)

    if argc != 1 {
      fmt.Println(args[0] + " <noargs>")
      os.Exit(1)
    }

    fmt.Println("date_utc")
}

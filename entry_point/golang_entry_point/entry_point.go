package main

import "os"
import "fmt"

//comment

func main() {
    args := os.Args
    argc := len(args)

    if argc != 2 {
      fmt.Fprintf(os.Stderr, "Usage: " + args[0] + " <args1>\n")
      os.Exit(1)
    }

    fmt.Println("example")
}

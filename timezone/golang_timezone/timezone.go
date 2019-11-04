package main

import (
    //"encoding/json"
    "fmt"
    //"io/ioutil"
    //"net/http"
    "time"
    "os"
)

func main() {
    args := os.Args
    argc := len(args)

    now := time.Now()

    if argc != 1 {
      fmt.Println(args[0] + " <noargs>")
      os.Exit(1)
    }


    fmt.Println(now)
    fmt.Println(now.Local())
    fmt.Println(now.Zone())
}

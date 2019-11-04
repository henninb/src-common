package main

import (
  "fmt"
  "io/ioutil"
  "os"
)

func fileRead( fileName string ) {
    b, err := ioutil.ReadFile(fileName)
    if err != nil {
        fmt.Print(err)
    }

    fmt.Println(b) // print the content as 'bytes'
    fmt.Println(string(b)) // print the content as a 'string'
}

func main() {
    args := os.Args
    argc := len(args)

    if argc != 1 {
      fmt.Println(args[0] + " <noargs>")
      os.Exit(1)
    }

    fileRead("input.txt")
}



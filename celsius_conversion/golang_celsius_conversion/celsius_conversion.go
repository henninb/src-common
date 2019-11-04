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

  //fmt.Println("example")
  fmt.Printf("toFahrenheit(%d)=<%f>\n", 21, toFahrenheit(21))
  fmt.Printf("toCelsius(%d)=<%f>\n", 70, toCelsius(70))
}

func toFahrenheit ( x  float64 ) float64 {
  return  x * (9.0/5.0) + 32.0;
}

func toCelsius (  x float64 ) float64 {
  return (x - 32.0) * (5.0/9.0);
}


package main

import "os"
import "fmt"
import "math"

// pi launches n goroutines to compute an
// approximation of pi.
func pi(n int) float64 {
    ch := make(chan float64)
    for k := 0; k <= n; k++ {
        go term(ch, float64(k))
    }
    f := 0.0
    for k := 0; k <= n; k++ {
        f += <-ch
    }
    return f
}

func term(ch chan float64, k float64) {
    ch <- 4 * math.Pow(-1, k) / (2*k + 1)
}

func main() {
    args := os.Args
    argc := len(args)

    if argc != 1 {
      fmt.Println(args[0] + " <noargs>")
      os.Exit(1)
    }

    fmt.Println("pi_calculate")
        fmt.Println(pi(5000))
        fmt.Println("3.141592653589793238462643383279")
}

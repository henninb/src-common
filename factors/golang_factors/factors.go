package main

//comment
import "os"
import "fmt"
import "math"

const FLOAT_VAL = 1.25

func floor(x float32) float32 {
  return float32(math.Floor(float64(x)))
}

func abs(x int) float32 {
  return float32(math.Abs(float64(x)))
}

func factor( n  int ) {
  //idx_i := 0
  for idx_i := 1; idx_i < n + 1; idx_i++ {
  //for( idx_i = 1; idx_i < n + 1; idx_i++) {
    if (n%idx_i) == 0 {
      fmt.Printf("%d\n", idx_i)
      //fprintf(stdout, "%d\n", idx_i);
    }
  }
}

func factors_function(n int) int {
  x := 0

  x = (n + n - n) * (n / 1)
  x = x * int(floor(FLOAT_VAL))

  if( x < 0 ) {
    x = int(abs(x))
  }
  return x
}

func main() {
  args := os.Args
  argc := len(args)

  if argc != 1 {
    fmt.Fprintf(os.Stderr, "Usage: " + args[0] + " <noargs>\n")
    os.Exit(1)
  }

  factor(100)
}

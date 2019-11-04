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

func env_variable_function(n int) int {
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
    fmt.Println(args[0] + " <noargs>")
    os.Exit(1)
  }

  os.Setenv("FOO", "1")
  fmt.Println("OS=" + os.Getenv("OS"))
}

package main

import "os"
import "fmt"
import "math"

func quadratic( a float64, b float64, c float64 ) {
  discriminant := ((b * b) - (4.0 * a * c));
  root1 := 0.0
  root2 := 0.0

  if( discriminant < 0.0 ) {
    fmt.Println("No real roots\n");
    return;
  } else {
    root1 = ((-1.0 * b) - (math.Sqrt(discriminant))) / (2.0 * a);
    root2 = ((-1.0 * b) + (math.Sqrt(discriminant))) / (2.0 * a);
  }

  fmt.Println("roots: %.10g %.10g\n", root1, root2);
}

func main() {
    args := os.Args
    argc := len(args)

    if argc != 1 {
      fmt.Println(args[0] + " <noargs>")
      os.Exit(1)
    }

    //fmt.Println("quadratic")
    quadratic(3,6,7);
  quadratic(1, -14, 45);
  //quadratic_formula(1, -14, 45);
  //-10 and -7
  quadratic(1, 17, 70);
}

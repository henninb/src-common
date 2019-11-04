package main

import (
  "fmt"
  "math/cmplx"
)

const Pi = 3.14

const (
  // Create a huge number by shifting a 1 bit left 100 places.
  // In other words, the binary number that is 1 followed by 100 zeroes.
  Big = 1 << 100
  // Shift it right again 99 places, so we end up with 1<<1, or 2.
  Small = Big >> 99
)

var (
  ToBe bool = false
  MaxInt uint64 = 1<<64 - 1
  z complex128 = cmplx.Sqrt(-5 + 12i)
  str string = "mystring"
  myint int = 5
)

var x = 7


func main() {
  mfloat := 7.0


  //var i int
  //var f float64
  //var b bool
  //var s string
  //fmt.Printf("%v %v %v %q\n", i, f, b, s)
  var i int = 42
  var f float64 = float64(i)
  var u uint = uint(f)

  fmt.Printf("Type: %T Value: %v\n", mfloat, mfloat)
  fmt.Printf("Type: %T Value: %v\n", ToBe, ToBe)
  fmt.Printf("Type: %T Value: %v\n", MaxInt, MaxInt)
  fmt.Printf("Type: %T Value: %v\n", z, z)
  fmt.Printf("Type: %T Value: %v\n", str, str)
  fmt.Printf("Type: %T Value: %v\n", myint, myint)
  fmt.Printf("Type: %T Value: %v\n", f, f)
  fmt.Printf("Type: %T Value: %v\n", u, u)
}

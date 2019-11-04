package main

import "os"
import "fmt"

func rec_add(  x int,  y int ) int {
  if( y == 0 ) {
    return x;
  } else {
    return 1 + rec_add( x, y - 1 );
  }
}

func main() {
  args := os.Args
  argc := len(args)

  if argc != 1 {
    fmt.Println(args[0] + " <noargs>")
    os.Exit(1)
  }

  fmt.Println("example 6+8=", rec_add(6,8))
}

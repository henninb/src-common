package main

import "os"
import "fmt"

func rec_for_loop(x int) int {
  if( x == 0 ) {
    return 0
  } else {
    rec_for_loop(x - 1);
    fmt.Printf("rec_for_loop=<%d>\n", x)
    return 0
  }
}

func rec_for_loop_reverse(x int) {
  if( x == 0 ) {
    return
  } else {
    fmt.Printf("rec_for_loop=<%d>\n", x)
    rec_for_loop_reverse(x - 1)
  }
}

func main() {
  args := os.Args
  argc := len(args)

  if argc != 1 {
    fmt.Println(args[0] + " <noargs>")
    os.Exit(1)
  }
  rec_for_loop(10)
  rec_for_loop_reverse(10)
}

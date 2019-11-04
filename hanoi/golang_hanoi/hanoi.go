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

    hanoi( 3, 1, 2, 3)
}

func hanoi( x int,  from int,  to int,  aux int) {
  if( x == 1 ) {
    fmt.Printf("Move Disk From %d to %d\n", from, to);
  } else {
    hanoi(x - 1, from, aux, to);
    fmt.Printf("Move Disk From %d to %d\n", from, to);
    hanoi(x - 1, aux, to, from);
  }
}

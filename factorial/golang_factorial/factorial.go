package main

import "fmt"
import "os"

func factorial( n int ) int {
  if( n == 0 ) {
    return 0;
  } else if( n == 1 ) {
    return 1;
  } else {
    return(n * factorial( n - 1 ));
  }
}

func main() {
    args := os.Args
    argc := len(args)

    if argc != 1 {
      fmt.Println(args[0] + " <noargs>")
      os.Exit(1)
    }

    for idx_i := 1; idx_i < 15; idx_i++ {
      fmt.Printf("factorial(%d)=<%d>\n", idx_i, factorial(idx_i));
    }
}


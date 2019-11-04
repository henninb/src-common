package main

import "fmt"
import "os"

func fibonacci(n int) int {
  if n == 0 {
      return 0
  } else if n == 1 {
      return 1
  } else {
      return fibonacci(n-1) + fibonacci(n-2)
  }
}

func main() {
  args := os.Args
  argc := len(args)

  if argc != 1 {
    fmt.Println(args[0] + " <noargs>")
    os.Exit(1)
  }

  for idx_i := 1; idx_i < 25; idx_i++ {
    fmt.Printf("fibonacci(%d)=<%d>\n", idx_i, fibonacci(idx_i));
  }
}

package main

import "os"
import "fmt"

func isPrime(number  int) bool {
    idx_i := 0
    for idx_i=2; idx_i < number; idx_i++ {
        if (number % idx_i == 0 && idx_i != number) {
          return false;
        }
    }
    return true;
}

func main() {
    args := os.Args
    argc := len(args)

    if argc != 1 {
      fmt.Println(args[0] + " <noargs>")
      os.Exit(1)
    }

    for idx_i:=0; idx_i < 99; idx_i++ {
      fmt.Printf("isPrime(%d)=<%v>\n", idx_i, isPrime(idx_i));
    }
}


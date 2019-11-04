package main

import "os"
import "fmt"

func isLeapYear( year int ) bool {
  if( year > 1581 ) {
    return(((year % 4 == 0) && (year % 100 > 0)) || (year % 400 == 0));
  } else {
    return false;
  }
}

func main() {
    args := os.Args
    argc := len(args)

    if argc != 1 {
      fmt.Println(args[0] + " <noargs>")
      os.Exit(1)
    }

    for idx_i := 1999; idx_i < 2101; idx_i++ {
      fmt.Printf("isLeapYear(%d)=<%t>\n", idx_i, isLeapYear(idx_i));
    }
}

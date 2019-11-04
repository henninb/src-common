package main

import "os"
import "fmt"
//import "strings"
import "strconv"

func luhnCheck( cardNumber string ) bool {
  luhnsum := luhnSum(cardNumber)
  //fmt.Println( "",  luhnsum)

  if (luhnsum % 10 == 0 ) {
    fmt.Println("cardNumber is valid: ", cardNumber)
    return true
  }
  fmt.Println("cardNumber is NOT valid: ", cardNumber)
  return false
}

func luhnSum( cardNumber string ) int64 {
  factor := int64(1)
  luhnsum := int64(0)
  inum :=  int64(0)

  for idx := len(cardNumber) - 1; idx >= 0; idx--  {
    inum , _ = strconv.ParseInt(string(cardNumber[idx]), 0, 64)
    if( factor == 2 ) {
      inum = inum * 2;
      if( inum > 9 ) {
        // sum of the two digits for the two digits sum
        inum = inum - 9;
      }
    }

    luhnsum += inum;
    if( factor == 1 ) {
      factor = 2;
    } else {
      factor = 1;
    }
  }
  return luhnsum;
}

func main() {
    args := os.Args
    argc := len(args)

    if argc != 1 {
      fmt.Println(args[0] + " <noargs>")
      os.Exit(1)
    }

    luhnCheck("6011000000000012")
    luhnCheck("6011000000000013")
    luhnCheck("4987002233114458")
    luhnCheck("379126015215813")
}

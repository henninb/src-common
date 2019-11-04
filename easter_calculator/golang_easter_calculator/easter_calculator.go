package main

import "fmt"
import "os"

func easterCalculatorNew(year int) {
    day := 0
    month := 0
    g := 0
    c := 0
    h := 0
    i := 0

    g = year % 19
    c = year / 100
    h = (c - (int)(c / 4) - (int)((8 * c + 13) / 25) + 19 * g + 15) % 30
    i = h - (int)(h / 28) * (1 - (int)(h / 28) * (int)(29 / (h + 1)) * (int)((21 - g) / 11))

    day   = i - ((year + (int)(year / 4) + i + 2 - c + (int)(c / 4)) % 7) + 28
    month = 3

    if (day > 31) {
        month = month + 1
        day = day - 31
    }
    fmt.Printf("Easter Sunday:=<%d-%02d-%02d>\n", year, month, day)
    //return new DateTime(year, month, day);
}

func easterCalculator( year int ) {
  G := 0;
  S := 0;
  L := 0;
  PP := 0;
  P := 0;
  D := 0;
  X := 0;
  month := 0;
  day := 0;

  G = (year % 19) + 1;
  S = ((year - 1600) / 100) - ((year - 1600) / 400);
  L = (((year - 1400) / 100) * 8) / 25;
  PP = (30003 - 11 * G + S - L) % 30;
  if( PP == 28 ) {
    if( G > 11 ) {
      P = 27;
    }
  } else if( PP == 29 ) {
    P = 28;
  } else {
    P = PP;
  }

  D = (year + (year / 4) - (year / 100) + (year / 400)) % 7;
  //DD = (8 - D) % 7;
  //PPP = (70003 + P) % 7;
  X = ((70004 - D - P) % 7) + 1;

  if((P + X) < 11 ) {
    month = 3;
    day = ((P + X) + 21);
  } else {
    month = 4;
    day = ((P + X) - 10);
  }

  fmt.Printf("Easter Sunday()=<%d-%02d-%02d>\n", year, month, day);
}

func main() {
  args := os.Args
  argc := len(args)

  if argc != 1 {
    fmt.Println(args[0] + " <noargs>")
    os.Exit(1)
  }

  for idx_i := 2018; idx_i < 2100; idx_i++ {
    easterCalculator(idx_i);
    easterCalculatorNew(idx_i);
  }
}

package main

import "os"
import "fmt"
import "time"

func epoch_conversion_function(n int) int {
  return n
}

func date_utc() {
  utc := time.Now().UTC()
  year := utc.Year()
  month := utc.Month()
  day := utc.Day()
  hour := utc.Hour()
  min := utc.Minute()
  sec := utc.Second()
  fmt.Printf("local=<%d-%d-%d %d:%d:%d>\n", year, month, day, hour, min, sec)
  fmt.Println("utc=" + utc.String())
}

  func datetimeToEpoch( y int, m int, mday int, h int, min int, s int ) int {
    idx := 1970;
    total_days := 0;
    total_secs := 0;

    for ( idx < y ) {
      idx = idx + 1;
      total_days += compute_date_doy(idx, 12, 31);
    }
    total_days = total_days + compute_date_doy(y, m, mday - 1);
    total_secs = (total_days * 86400) + (h * 60 * 60) + (min * 60) + s;
    return total_secs;
  }

  func compute_date_doy( year int, month int, mday int ) int {
    n1 := (275 * month / 9);
    n2 := ((month + 9) / 12);
    n3 := (1 + ((year - 4 * (year / 4) + 2) / 3));
    n := n1 - (n2 * n3) + mday - 30;

    return n;
  }

func main() {
  args := os.Args
  argc := len(args)
  utc := time.Now().UTC()
  year := utc.Year()
  month1 := int(utc.Month())
  //month1 := 11
  day := utc.Day()
  hour := utc.Hour()
  min := utc.Minute()
  sec := utc.Second()


  if argc != 1 {
    fmt.Println(args[0] + " <noargs>")
    os.Exit(1)
  }

  fmt.Println(datetimeToEpoch(year, month1, day, hour, min, sec))
  date_utc();
}

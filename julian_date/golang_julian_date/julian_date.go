package main
import "os"
import "fmt"
import "time"
import "strconv"

func main() {
    args := os.Args
    argc := len(args)

    if argc != 1 {
      fmt.Println(args[0] + " <noargs>")
      os.Exit(1)
    }

    local := time.Now()
    t := time.Now()
    fmt.Println("Local Julian date: " + strconv.FormatFloat(julian_date(local.Year(), int(local.Month()), local.Day()), 'f', -1,64  ));
    fmt.Printf("%d-%02d-%02dT%02d:%02d:%02d-00:00\n", t.Year(), t.Month(), t.Day(), t.Hour(), t.Minute(), t.Second())
    //strconv.FormatFloat(3.14, 'f', -1, 32)
}

func julian_date( y int, m int, d int ) float64 {
  y += 8000;
  if( m < 3 ) {
    y--;
    m += 12;
  }

  return (float64)((y * 365) + (y / 4) - (y / 100) + (y / 400) - 1200820 + (m * 153 + 3) / 5 - 92 + d - 1) - 0.5;
}

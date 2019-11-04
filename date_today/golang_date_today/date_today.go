package main

import "os"
import "fmt"
import "time"

func date_today() {
  local := time.Now()
  year := local.Year()
  month := local.Month()
  day := local.Day()
  hour := local.Hour()
  min := local.Minute()
  sec := local.Second()
  fmt.Printf("local=<%d-%d-%d %d:%d:%d>\n", year, month, day, hour, min, sec)
  fmt.Println("local=" + local.String())
}

func date_utc() {
  utc := time.Now().UTC()
  year := utc.Year()
  month := utc.Month()
  day := utc.Day()
  hour := utc.Hour()
  min := utc.Minute()
  sec := utc.Second()
  fmt.Printf("utc=<%d-%d-%d %d:%d:%d>\n", year, month, day, hour, min, sec)
  fmt.Println("utc=" + utc.String())
}

func main() {
  args := os.Args
  argc := len(args)

  if argc != 1 {
    fmt.Println(args[0] + " <noargs>")
    os.Exit(1)
  }

  date_today();
  date_utc();
}

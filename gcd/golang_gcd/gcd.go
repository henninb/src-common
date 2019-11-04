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

  fmt.Printf("r_gcd(34,10)=<%d>\n", r_gcd(34,10));
}

func r_gcd( a int, b int ) int {
  if( b == 0 ) {
    return a;
  } else {
    return r_gcd(b, (a % b));
  }
}

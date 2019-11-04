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

  for idx_i := 1; idx_i < 25; idx_i++ {
    fmt.Printf("euler_phi(%d)=<%d>\n", idx_i, euler_phi(idx_i));
    fmt.Printf("euler_phi_new(%d)=<%d>\n", idx_i, euler_phi_new(idx_i));
  }
}

func euler_phi_new( n int ) int {
  return rec_for_loop(n, n)
}

func rec_for_loop( n int, x int ) int {
  if n == 0 {
    return 0
  } else {
    if is_coprime(x, n) == true {
      return 1 + rec_for_loop(n - 1, x)
    } else {
      return 0 + rec_for_loop(n - 1, x)
    }
  }
}

//relatively prime
func is_coprime( a int, b int ) bool {
  return r_gcd(a,b) == 1
}

//euclid
func r_gcd( a int, b int ) int {
  if( b == 0 ) {
    return a;
  } else {
    return r_gcd(b, (a % b));
  }
}

func euler_phi( n int ) int {
  remainder := n
  phi := n
  odd := 0

  if (remainder % 2) == 0 {
    phi = phi / 2;
    for( (remainder % 2) == 0 ) {
      remainder = remainder / 2;
    }
  }

  odd = 3;

  for (odd <= remainder ) {
    if (remainder % odd == 0 ) {
      phi = phi * (odd - 1) / odd
      for( (remainder % odd) == 0 ) {
        remainder = remainder / odd;
      }
    }
    odd = odd + 2
  }
  return phi;
}

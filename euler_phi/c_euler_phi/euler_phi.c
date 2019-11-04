#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int euler_phi( int );
int r_gcd( int, int );
int is_coprime( int, int );
//int euler_phi_new( int );
int rec_for_loop( int, int );
int r_euler_phi( int );

int main( int argc, char *argv[] ) {
  int idx_i = 0;

  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  for( idx_i = 1; idx_i < 25; idx_i++ ) {
    printf("euler_phi(%d)=<%d>\n", idx_i, euler_phi(idx_i));
    printf("r_euler_phi(%d)=<%d>\n", idx_i, r_euler_phi(idx_i));
  }
  idx_i = rec_for_loop(5, 5);
  printf("idx_i=<%d>\n", idx_i);
  return 0;
}

int r_euler_phi( int n ) {
  return rec_for_loop(n, n);
}

int rec_for_loop( int n, int x ) {
  if( n == 0 ) {
    return 0;
  } else {
    if( is_coprime(x, n) == 1 ) {
      return 1 + rec_for_loop(n - 1, x);
    } else {
      return 0 + rec_for_loop(n - 1, x);
    }
  }
}

//int euler_phi_new( int n ) {
//  int idx;
//  int phi = 0;
//
//  for( idx = 1; idx <= n; idx++ ) {
//    if( is_coprime(idx, n) ) {
//      phi++;
//    }
//  }
//  return phi;
//}

//relatively prime
int is_coprime( int a, int b ) {
  return r_gcd(a,b) == 1;
}
//euclid
int r_gcd( int a, int b ) {
  if( b == 0 ) {
    return a;
  } else {
    return r_gcd(b, (a % b));
  }
}

int euler_phi( int n ) {
  int remainder = n;
  int phi = n;
  int odd = 0;

  if( n == 0 ) {
    return 0;
  }
  if( (remainder % 2) == 0 ) {
     phi = phi / 2;
     while( (remainder % 2) == 0 ) {
       remainder = remainder / 2;
     }
  }

  odd = 3;

  while (odd <= remainder ) {
    if (remainder % odd == 0 ) {
      phi = phi * (odd - 1) / odd;
      while( (remainder % odd) == 0 ) {
        remainder = remainder / odd;
      }
    }
    odd = odd + 2;
  }
  return phi;
}

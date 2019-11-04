#include <stdio.h>
#include <stdlib.h>

int r_gcd( int, int );
int is_coprime( int, int );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  printf( "r_gcd(45,5)=<%d>\n", r_gcd(45,5));
  printf( "is_coprime(45,5)=<%d>\n", is_coprime(45,5));
  printf( "r_gcd(45,7)=<%d>\n", r_gcd(47,7));
  printf( "is_coprime(45,7)=<%d>\n", is_coprime(47,7));
  return 0;
}

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

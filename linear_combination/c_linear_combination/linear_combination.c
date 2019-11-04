#include <stdio.h>
#include <stdlib.h>

void gcd_linear_combination( int, int );
void print_linear_combination( int, int, int, int, int );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0] );
    exit( 1 );
  }
  gcd_linear_combination(4, 59);
  return 0;
}

void print_linear_combination( int x, int y, int f, int g, int gcd ) {
  printf("The Linear Combination is: %d * (%d) + %d * (%d) = %d\n", x, f, y, g, gcd);
}

void gcd_linear_combination( int x, int y ) {
  int a2 = 1;
  int b3 = 1;
  int a3 = 0;
  int b2 = 0;
  int a1 = x;
  int b1 = y;

  while( 1 ) {
    if( a1 == b1 ) {
      print_linear_combination(x, y, b2, b3, b1);
      print_linear_combination(x, y, a2, a3, a1);
      break;
    } else if( a1 > b1 ) {
      a1 = a1 - b1;
      a2 = a2 - b2;
      a3 = a3 - b3;
    } else {
      // if( b1 > a1 )
      b1 = b1 - a1;
      b2 = b2 - a2;
      b3 = b3 - a3;
    }
  }
}

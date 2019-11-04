#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void factor( long );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0]);
    exit( 1 );
  }

  //factor(1150);
  factor(100);
  return 0;
}

void factor( long n ) {
  int idx_i = 0;
  for( idx_i = 1; idx_i < n + 1; idx_i++) {
    if( (n%idx_i) == 0 ) {
      fprintf(stdout, "%d\n", idx_i);
    }
  }
}

void factor_not_working( long n ) {
  long test;

  fprintf(stdout, "1\n");
  for( test = n - 1; test >= sqrt(n); test-- ) {
    if( (n % test) == 0 ) {
      fprintf(stdout, "%ld\n", n / test);
    }
  }
  fprintf(stdout, "%ld\n", n);
}

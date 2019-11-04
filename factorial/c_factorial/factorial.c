#include <stdio.h>
#include <stdlib.h>
#include <string.h>

unsigned int factorial( unsigned int );

int main( int argc, char *argv[] ) {
  unsigned int idx_i;

  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  for( idx_i = 1; idx_i < 13; idx_i++ ) {
    fprintf(stdout, "factorial(%u)=<%u>\n", idx_i, factorial(idx_i));
  }
  return 0;
}

unsigned int factorial( unsigned int n ) {
  if( n == 0 ) {
    return 0;
  } else if( n == 1 ) {
    return 1;
  } else {
    return(n * factorial( n - 1 ));
  }
}

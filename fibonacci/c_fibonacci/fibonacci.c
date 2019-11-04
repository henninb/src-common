#include <stdio.h>
#include <stdlib.h>

int fibonacci( int );

int main( int argc, char *argv[] ) {
  int idx_i = 0;

  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0] );
    exit(1);
  }

  for( idx_i = 1; idx_i < 25; idx_i++ ) {
    printf("fibonacci(%d)=<%d>\n", idx_i, fibonacci(idx_i));
  }
  return 0;
}

int fibonacci( int n ) {
  if( n == 0 ) {
    return 0;
  } else if( n == 1 ) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

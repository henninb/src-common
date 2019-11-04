#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int isPrime( unsigned long );

int main( int argc, char *argv[] ) {
  unsigned long idx_i = 0L;

  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0]);
    exit( 1 );
  }
  for( idx_i = 0; idx_i < 100; idx_i++ ) {
    printf("prime %lu = %d\n", idx_i, isPrime(idx_i));
  }
  return 0;
}

int isPrime(unsigned long number) {
  unsigned long idx_i = 0L;

  for (idx_i = 2; idx_i < number; idx_i++ ) {
    if( number % idx_i == 0 && idx_i != number ) {
      return 0;
    }
  }
  return 1;
}

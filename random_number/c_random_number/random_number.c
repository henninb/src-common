#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int rand_int( int, int );

int main( int argc, char *argv[] ) {
  int idx;

  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0] );
    exit(1);
  }

  srand((unsigned)(time(0)));
  for( idx = 0; idx < 1000; idx++ ) {
    printf("%d\n", rand_int(1, 100));
  }

  return 0;
}

int rand_int( int min, int max ) {
  if( min > max ) {
    return max+(int)((min - max + 1) * rand() / (RAND_MAX + 1.0));
  } else {
    return min+(int)((max - min + 1) * rand() / (RAND_MAX + 1.0));
  }
}

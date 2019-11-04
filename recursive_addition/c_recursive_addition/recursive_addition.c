#include <stdio.h>
#include <stdlib.h>

int rec_add( int, int );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  printf( "add: %d\n", rec_add(6, 8));
  printf( "add: %d\n", rec_add(9, 14));
  return 0;
}

int rec_add( int x, int y ) {
  if( y == 0 ) {
    return x;
  } else {
    return 1 + rec_add( x, y - 1 );
  }
}

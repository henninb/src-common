#include <stdio.h>
#include <stdlib.h>

int main( int argc, char *argv[] ) {
  if( argc != 2 ) {
    fprintf( stderr, "Usage: %s <arg1>\n", argv[0] );
    exit( 1 );
  }
  printf( "%s\n", argv[1] );

  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0] );
    exit( 1 );
  }

  return 0;
}

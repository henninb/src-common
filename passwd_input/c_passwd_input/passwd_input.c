#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }
  return 0;
}

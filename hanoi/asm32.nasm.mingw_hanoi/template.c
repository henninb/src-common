#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int template( char * );

int main( int argc, char *argv[] ) {
  if( argc != 2 ) {
    fprintf(stderr, "Usage: %s <arg1>\n", argv[0]);
    exit(1);
  }

  template(argv[1]);
  return 0;
}

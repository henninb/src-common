#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//extern int template( int );

int main( int argc, char *argv[] ) {
  int results;

  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  return 0;
}

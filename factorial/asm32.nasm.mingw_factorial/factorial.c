#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int factorial( int );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  printf("%d\n", factorial(0));
  printf("%d\n", factorial(1));
  printf("%d\n", factorial(5));
  printf("%d\n", factorial(6));
  return 0;
}

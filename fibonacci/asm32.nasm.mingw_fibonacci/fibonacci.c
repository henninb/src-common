#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int fibonacci( int );
extern int fibonacci_r( int );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  printf("%d\n", fibonacci_r(3));
  printf("%d\n", fibonacci_r(4));
  printf("%d\n", fibonacci_r(5));
  printf("%d\n", fibonacci_r(6));
  printf("%d\n", fibonacci_r(7));
  return 0;
}

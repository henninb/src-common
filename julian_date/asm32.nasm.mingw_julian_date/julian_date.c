#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern double julian_date( int, int, int );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  //double julian_date( int y, int m, int d )
  printf("%lf\n", julian_date(2010, 1, 1));
  return 0;
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int quadratic( double, double, double, double *, double * );

int main( int argc, char *argv[] ) {
  int rc;
  double root1;
  double root2;

  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  //9,5
  rc = quadratic(1.0, -14, 45.0, &root1, &root2);
  if( rc == 1 ) {
    printf("real roots\n");
    printf("roots: %.10g %.10g\n", root1, root2);
  } else {
    printf("no real roots\n");
  }
  return 0;
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int template( int, int );

int main( int argc, char *argv[] ) {
  //char *string;

  if( argc != 3 ) {
    fprintf(stderr, "Usage: %s <int1> <int2>\n", argv[0]);
    exit(1);
  }

  printf("sizeof(int) %d\n", sizeof(int));
  //template(3, 4);
  printf("GCD of %s and %s = %d\n", argv[1], argv[2], template(atoi(argv[1]),atoi(argv[2])));
//  string = (char *) malloc(10);
//  template(string, 10);

  return 0;
}

#if defined(_WIN32)
  #define OS_WINDOWS 1 // Windows
#elif defined(_WIN64)
  #define OS_WINDOWS 1 // Windows
#else
  //error Unsupported operating system
#endif

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int example_function( int );

int main( int argc, char *argv[] ) {
  int idx_i;

  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }
  for( idx_i = 1; idx_i < 10; idx_i++ ) {
    fprintf(stdout, "example_function(%d)=<%d>\n", idx_i, example_function(idx_i));
  }
  return 0;
}

int example_function( int n ) {
  int x = 0;

  x = (n + n - n) * (n / 1);
  x = x * (int) floor(1.25);

  if( x < 0 ) {
    x = abs(x);
  }
  return x;
}

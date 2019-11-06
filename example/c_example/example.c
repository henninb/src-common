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
#include "example.h"
#ifdef UNIT_TEST
#include "example_test.h"
#endif

int main( int argc, char *argv[] ) {

  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }
#ifdef UNIT_TEST
  example_function_test();
#else
  loop();
#endif
  return 0;
}

void loop() {
  int idx_i = 0;
  for( idx_i = 1; idx_i < 10; idx_i++ ) {
    fprintf(stdout, "example_function(%d)=<%d>\n", idx_i, example_function(idx_i));
  }
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

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int main( int argc, char *argv[] ) {
  unsigned int seconds = 10;

  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0] );
    exit( 1 );
  }

  printf("Sleeping... for 10 seconds\n");
  sleep(seconds);
  printf("Awake!\n");
  return 0;
}

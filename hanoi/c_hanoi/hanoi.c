#include <stdio.h>
#include <stdlib.h>

void hanoi( int, char, char, char );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0] );
    exit( 1 );
  }

  hanoi(3, 'A', 'B', 'C');
  printf("=================================\n");
  hanoi(4, 'A', 'B', 'C');

  return 0;
}

void hanoi( int x, char from, char to, char aux ) {
  if( x == 1 ) {
    printf("Move Disk From %c to %c\n", from, to);
  } else {
    hanoi(x - 1, from, aux, to);
    printf("Move Disk From %c to %c\n", from, to);
    hanoi(x - 1, aux, to, from);
  }
}

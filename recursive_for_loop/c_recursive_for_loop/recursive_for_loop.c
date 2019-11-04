#include <stdio.h>
#include <stdlib.h>

void rec_for_loop(int);
void rec_for_loop_reverse( int );
int rec_count_odd( int x, int max );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <nargs>\n", argv[0] );
    exit(1);
  }

  //printf( "element_count: %d\n", rec_count_odd( 0, 100));
  rec_for_loop(100);
  //rec_for_loop_reverse(100);
  return 0;
}

void rec_for_loop( int x ) {
  if( x == 0 ) {
    return;
  } else {
    rec_for_loop(x - 1);
    printf("%d\n", x);
  }
}

void rec_for_loop_reverse( int x ) {
  if( x == 0 ) {
    return;
  } else {
    printf("%d\n", x);
    rec_for_loop_reverse(x - 1);
  }
}

int rec_count_odd( int x, int max ) {
  if( x == max ) {
    return 0;
  } else {
    if( x % 2 == 0 ) {
      return 0 + rec_count_odd( x + 1, max );
    } else {
      printf("%d\n", x);
      return 1 + rec_count_odd( x + 1, max );
    }
  }
}

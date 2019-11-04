#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void nqueens( int );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  //nqueens(3);
  printf("\n");
  nqueens(4);
  printf("\n");
  nqueens(5);
  printf("\n");
  nqueens(6);
  return 0;
}

void nqueens( int n ) {
  int idx_i = 0;
  int idx_j = 0;
  int z = 0;
  int r = 0;
  int *rows = NULL;
  int *diagu = NULL;
  int *diagd = NULL;
  int * board = NULL;

  rows = (int*)malloc( n * sizeof(int));
  memset(rows, '\0', n * sizeof(int));
  diagu = (int*)malloc( 2 * n * sizeof(int));
  memset(diagu, '\0', n * sizeof(int));
  diagd = (int*)malloc( 2 * n * sizeof(int));
  memset(diagd, '\0', n * sizeof(int));
  /* tells me the row of queen in column idx_i */
  board = (int *)malloc( n * sizeof(int));
  memset(board, '\0', n * sizeof(int));

  for( idx_i = 0; idx_i < n; idx_i++ ) {
    /*    cols[idx_i] = */
    rows[idx_i] = board[idx_i] = 0;
  }

  for( idx_j = 0; idx_j < (2 * n); idx_j++ ) {
    diagu[idx_j] = diagd[idx_j] = 0;
  }

  z = 0;
  board[0] = 0;
  for(;; ) {
    /* strategy:

        try putting a queen in the next available spot, by
        looping over rows and checking row, diagu, and diagd.

        if there are no available spots, z-- and continue. */

    /* state now:
        rows[ ], diagu[ ], diagd[ ] all valid but not including a
        potential queen at (board[z], z).
     */

    /* is this a valid position? */

    /* r is the potential row for column z. */
    r = board[z];

    if( !(rows[r] || diagu[z + r] || diagd[((n - 1) - r) + z])) {
      /* ok to try this spot. */

      rows[r] = 1;
      diagu[z + r] = 1;
      diagd[((n - 1) - r) + z] = 1;

      /* go deeper. */
      z++;

      if( z == n ) {
        for( idx_i = 0; idx_i < n; idx_i++ ) {
          for( idx_j = 0; idx_j < n; idx_j++ ) {
            printf( " %c", "-X"[board[idx_i] == idx_j] );
          }
          printf( "\n" );
        }
        //exit( 0 );
        return;
      }

      board[z] = 0;
    } else {
      board[z]++;
      while( board[z] == n ) {
        /* too far! backtrack... */
        z--;
        rows[board[z]] = 0;
        diagu[z + board[z]] = 0;
        diagd[((n - 1) - board[z]) + z] = 0;
        board[z]++;
      }
      /* here I know I won't go off the end of the
         array because the problem has a solution! */
    }
  }
}

#include <stdio.h>
#include <stdlib.h>

void odd_order( int );
void doubly_even( int );
void half_even( int, int, int, int, int );
void row_i( int, int, int, int, int, int, int );
void half_row( int, int, int, int, int, int, int, int );
void driver( int );

int main( int argc, char *argv[] ) {
  if( argc != 2 ) {
    fprintf( stderr, "Usage: %s <magic number>", argv[0] );
    exit( 1 );
  }

  driver(atoi(argv[1]));
  return 0;
}
void driver( int n ) {
  if( n < 1 || n == 2 ) {
    printf( "invalid input\n" );
    exit( 1 );
  }

  if((n & 1)) {
    odd_order( n );
  } else if( !(n & 2)) {
    doubly_even( n );
  } else {
    half_even( n, 3, 1, 2, 0 );
    half_even( n, 0, 2, 1, 3 );
  }

  printf( "\n\nThe sum of each row and column is %8d\n\n", n * (n * n + 1) >> 1 );
}

/* "lozenge" method */
void odd_order( int N ) {
  int i, j, N1, N3, t;

  N1 = (N - 1) >> 1;
  N3 = N1 - 1;

  for( i = 1; i <= N; i++ ) {
    for( j = 1; j <= N; j++ ) {
      t = N1 - i + j;

      if( t >= N ) {
        t -= N;
      } else if( t < 0 ) {
        t += N;
      }

      printf( "%5d ", 1 + t + N * ((N3 + i + j) % N));
    }
    printf( "\n" );
  }
}

/* "Nine block method */
void doubly_even( int n ) {
  int i, j, num = 1;
  int nminus = n - 1, nn = n * n + 1;
  int block1 = (n - 2) >> 2, block2 = nminus - block1;
  int inside1 = n >> 2, inside2 = nminus - inside1;

  for( j = 0; j < n; j++ ) {
    for( i = 0; i < n; i++ ) {
      if( i >= inside1 && i <= inside2 &&     /* middle block */
          j >= inside1 && j <= inside2 ) {
        printf( "%5d ", num );
      } else if((i > block1 && i < block2) ||   /* not middle block */
                (j > block1 && j < block2)) { /* and not corner block */
        printf( "%5d ", nn - num );
      } else{                 /* corner block */
        printf( "%5d ", num );
      }

      num++;
    }

    printf( "\n" );
  }
}

/* quarter-board plus swap pattern method */

/* print half a board */
void half_even( int n, int q1, int q2, int q3, int q4 ) {
  int i, halfn = n >> 1, m = n >> 2;

  for( i = 1; i <= m; i++ ) {       /* upper m rows of half board */
    row_i( 0, i, n, q1, q2, q3, q4 );
  }

  row_i( 1, m + 1, n, q1, q2, q3, q4 );  /* middle row of half board */

  for( i = m + 2; i <= halfn; i++ ) {
    row_i( 0, i, n, q1, q2, q3, q4 );   /* lower m rows of half board */
  }
}

/* print i'th row of this half */
void row_i( int mid_row, int i, int n, int q1, int q2, int q3, int q4 ) {
  half_row( 1, mid_row, i, n, q1, q2, q3, q4 );    /* first half of row */
  half_row( 0, mid_row, i, n, q1, q2, q3, q4 );    /* second half of row */

  printf( "\n" );
}

/* print half of i'th row */
void half_row( int first_half, int mid_row, int i, int n, int q1, int q2, int q3, int q4 ) {
  int N = n >> 1, m = n >> 2;
  int j, t, val, N1 = (N - 1) >> 1, N3 = N1 - 1;
  int offset = (n * n) >> 2;  /* difference between quarter boards */

  for( j = 1; j <= N; j++ ) {
    t = N1 - i + j;

    if( t >= N ) {
      t -= N;
    } else if( t < 0 ) {
      t += N;
    }

    val = 1 + t + N * ((N3 + i + j) % N);    /* val is corresponding value in upper-left quarter */

    if( first_half ) {
      if((mid_row && j > 1 && j <= m + 1) || (!mid_row && j <= m)) {
        val += q1 * offset; /* swap square with corr. square */
      }else                                                         { /* in other half of board */
        val += q4 * offset; /* don't swap */
      }
    }
    /* second half */
    else if( j > (N - m + 1)) {
      val += q2 * offset;   /* swap square */
    } else {
      val += q3 * offset;   /* don't swap */
    }

    printf( "%5d ", val );
  }
}

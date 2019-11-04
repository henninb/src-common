#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int permuteCalculate( int, int );
void permutePrintString( char *, int, int );
void swapString( char *, char * );
void swapInteger( int *, int * );
void permutePrintInteger( int *, int, int );

int main( int argc, char *argv[] ) {
  //int res = 0;
  int list[] = {1,2,3};

  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  //res = permuteCalculate(strlen(argv[1]), strlen(argv[1]) - 1);
  //printf("P(%d, %d) = %d\n", strlen(argv[1]), strlen(argv[1]) - 1, res);
  //permutePrintString("hello", 0, strlen("hello"));
  permutePrintInteger(list, 0, 3);
  return 0;
}

void swapInteger( int *int_a, int *int_b ) {
  int tmp;

  tmp = *int_a;
  *int_a = *int_b;
  *int_b = tmp;
}

void swapString( char *char_a, char *char_b ) {
  char tmp;

  tmp = *char_a;
  *char_a = *char_b;
  *char_b = tmp;
}

void permutePrintString( char *list, int startingIndex, int listLength ) {
  int idx_i;
  int idx;

  if( startingIndex == listLength ) {
    for( idx = 0; idx < listLength; idx++ ) {
      printf("%c", list[idx]);
    }
    printf("\n");
  } else {
    for( idx_i = startingIndex; idx_i < listLength; idx_i++ ) {
      swapString(&list[idx_i], &list[startingIndex]);
      permutePrintString( list, startingIndex + 1, listLength );
      swapString(&list[idx_i], &list[startingIndex]);
    }
  }
}

void permutePrintInteger( int *list, int startingIndex, int listLength ) {
  int idx_i;
  int idx;

  if( startingIndex == listLength ) {
    for( idx = 0; idx < listLength; idx++ ) {
      printf("%d\t", list[idx]);
    }
    printf("\n");
  } else {
    for( idx_i = startingIndex; idx_i < listLength; idx_i++ ) {
      swapInteger(&list[idx_i], &list[startingIndex]);
      permutePrintInteger(list, startingIndex + 1, listLength);
      swapInteger(&list[idx_i], &list[startingIndex]);
    }
  }
}

int permuteCalculate( int n, int r ) {
  int idx;
  int tmp;

  tmp = 1;
  for( idx = n; idx > (n - r); idx-- ) {
    tmp = tmp * idx;
  }
  return tmp;
}

int permuteCalculateR( int n, int r ) {
  if( n == 0 || r == 0 ) {
    return 1;
  } else {
    return(n * permuteCalculateR( n - 1, r - 1 ));
  }
}

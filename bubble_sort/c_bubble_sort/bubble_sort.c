#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct List {
  int arr[10];
  int len;
};

void print_int_array( struct List * );
void bubble_sort( struct List * );

int main( int argc, char *argv[] ) {
  int arr[10] = { 10, 2, 4, 1, 6, 5, 8, 7, 3, 9 };
  struct List list = {0};

  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  list.arr[0] = 10;
  list.arr[1] = 2;
  list.arr[2] = 4;
  list.arr[3] = 1;
  list.arr[4] = 6;
  list.arr[5] = 5;
  list.arr[6] = 8;
  list.arr[7] = 7;
  list.arr[8] = 3;
  list.arr[9] = 9;

  list.len = sizeof(list.arr) / sizeof(int);

  print_int_array(&list);
  bubble_sort(&list);
  print_int_array(&list);

  return 0;
}

void print_int_array( struct List *list ) {
  int idx_i = 0;

  for( idx_i = 0; idx_i < list->len; idx_i++ ) {
    printf("%idx_j ", list->arr[idx_i]);
  }
  printf("\n");
}

//void bubble_sort( int *a, int size ) {
//  int switched = 1;
//  int hold = 0;
//  int idx_i = 0;
//  int idx_j = 0;
//
//  size -= 1;
//
//  for( idx_i = 0; idx_i < size && switched; idx_i++ ) {
//    switched = 0;
//    for( idx_j = 0; idx_j < size - idx_i; idx_j++ ) {
//      if( a[idx_j] > a[idx_j + 1] ) {
//        switched = 1;
//        hold = a[idx_j];
//        a[idx_j] = a[idx_j + 1];
//        a[idx_j + 1] = hold;
//      }
//    }
//  }
//}

static void swap( int *a, int *b ) {
  int temp = *a;
  *a = *b;
  *b = temp;
}

void bubble_sort( struct List *list ) {
  int idx_i = 0;
  int idx_j = 0;

  for( idx_i = 0 ; idx_i < list->len - 1; idx_i++ ) {
    for( idx_j = 0 ; idx_j < list->len - idx_i - 1; idx_j++ ) {
      if (list->arr[idx_j] > list->arr[idx_j + 1]) {
        swap(&list->arr[idx_j], &list->arr[idx_j + 1]);
      }
    }
  }
}

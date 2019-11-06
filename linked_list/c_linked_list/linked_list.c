#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    int val;
    struct node * next;
} node_t;

void print_list( node_t * );

int main( int argc, char *argv[] ) {
  node_t *head = NULL;

  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }


  head = calloc(1, sizeof(node_t));
  head->val = 1;
  head->next = calloc(1, sizeof(node_t));
  head->next->val = 2;
  head->next->next = NULL;

  print_list(head);

  return 0;
}

void print_list( node_t *head ) {
  node_t *current = head;

  while (current != NULL) {
    printf("%d\n", current->val);
    current = current->next;
  }
}

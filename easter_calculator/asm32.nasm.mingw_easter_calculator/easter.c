#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
  unsigned short d;
  unsigned short m;
} Date;

extern void easter_asm( unsigned short, Date * );

int main( int argc, char *argv[] ) {
  Date *date = (Date *) malloc(sizeof(Date));
  Date d;

  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  easter_asm(2010, &d);
  printf("here1\n");
  easter_asm(2010, date);
  printf("here2\n");
  printf("2009 %d %d\n", date->d, date->m);
  return 0;
}

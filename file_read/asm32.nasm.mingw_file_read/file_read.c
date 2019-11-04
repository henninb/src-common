#include <stdio.h>
#include <stdlib.h>

extern FILE * fileOpen( char * );
extern int fileClose( FILE * );
extern char fileGetC( FILE * );

int main( int argc, char *argv[] ) {
  FILE *file;
  char ch;
  int rc;

  if( argc != 2 ) {
    fprintf(stderr, "Usage: %s <ifname>\n", argv[0]);
    exit(1);
  }

  if( (file = fileOpen(argv[1])) == NULL ) {
    fprintf(stderr, "ABORT: fileOpen failed.\n");
    exit(1);
  }

  while( (ch = fileGetC(file)) != -1 ) {
    fprintf(stdout, "%c", ch);
  }

  rc = fileClose(file);
  printf("rc = %d\n", rc);
  return 0;
}

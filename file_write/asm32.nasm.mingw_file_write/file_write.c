#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int fileOpen( char * );
extern int fileClose( int );
extern char fileWrite( int, char *, int );

int main( int argc, char *argv[] ) {
  //FILE *ofp;
  int fp;
  char *message = "i can't believe this works.";
  int rc;

  if( argc != 2 ) {
    fprintf(stderr, "Usage: %s <ofname>\n", argv[0]);
    exit(1);
  }

  fp = fileOpen(argv[1]);

  printf("fp = %d\n", fp);
  fileWrite(fp, message, strlen(message));

  rc = fileClose(fp);
  //printf("rc = %d\n", rc);
  return 0;
}

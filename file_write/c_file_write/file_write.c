#include <stdio.h>
#include <stdlib.h>

//#include <readline/readline.h>
//#include <readline/history.h>
//
int file_write( char *, char * );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0]);
    exit( 1 );
  }
  //printf( "%s\n", argv[1] );
  //printf("got here\n");
  file_write("output.txt", "some text");
  return 0;
}

int file_write( char *ofname, char *mesg ) {
  FILE *ofp;

  if( NULL == (ofp = fopen(ofname, "w")) ) {
    printf("Error: file pointer is null.");
    exit(1);
  }
  fprintf(ofp, "%s", mesg);
  fclose(ofp);

  return 0;
}

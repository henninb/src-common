#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
//#define _GNU_SOURCE

void fileRead( char * );
void fileRead2( char * );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit( 1 );
  }

  fileRead("input.txt");
  fileRead2("input.txt");
  return 0;
}

void fileRead( char *ifname ) {
  int ifd = 0;
  char ch = '\0';

  if( (ifd = open( ifname, O_RDONLY)) == -1 ) {
    fprintf(stderr, "ABORT: open failed for '%s'.\n", ifname);
    exit(1);
  }

  while( read( ifd, &ch, 1 ) != 0 ) {
    printf("%c", ch);
  }

  close(ifd);
}

void fileRead2(char *ifname) {
  FILE * ifp = NULL;
  char ch = '\0';

  if( NULL == (ifp = fopen(ifname, "r")) ) {
    printf("Error: file pointer is null.");
    exit(1);
  }
  while( !feof(ifp) ) {
    ch = fgetc(ifp);
    printf("%c", ch);
  }
  fclose(ifp);
}

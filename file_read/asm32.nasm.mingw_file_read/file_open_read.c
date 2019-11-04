#include <stdio.h>
#include <stdlib.h>

extern FILE * file_open( char * );
extern int file_close( FILE * );
extern char file_getc( FILE * );

int main( int argc, char *argv[] ) {
    FILE *file;
    char ch;
    int rc;

    if( argc != 2 ) {
        fprintf(stderr, "Usage: %s <fname>\n", argv[0]);
        exit(1);
    }

    if( (file = file_open(argv[1])) == NULL ) {
        fprintf(stderr, "ABORT: file_open failed.\n");
        exit(1);
    }

    while( (ch = file_getc(file)) != -1 ) {
        fprintf(stdout, "%c", ch);
    }

    rc = file_close(file);
    printf("rc = %d\n", rc);
    return 0;
}

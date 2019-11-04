#include <stdio.h>
#include <stdlib.h>

extern void print_example( char * );

int main( int argc, char *argv[] ) {
    if( argc != 2 ) {
        fprintf(stderr, "Usage: %s <string>\n", argv[0]);
        exit(1);
    }

    printf("Before asm called module.\n");
    print_example(argv[1]);
    print_example("\n");
    printf("After asm called module.\n");
    return 0;
}

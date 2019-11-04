#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define B64_SYNTAX_ERROR 1
#define B64_FILE_ERROR 2
#define B64_FILE_IO_ERROR 3
#define B64_ERROR_OUT_CLOSE 4
#define B64_LINE_SIZE_TO_MIN 5
#define B64_DEF_LINE_SIZE 72
#define B64_MIN_LINE_SIZE 4
#define B64_MAX_MESSAGES 6

void encode( FILE *, FILE *, int );
void encodeblock( unsigned char *, unsigned char *, int );
char *b64_message( int );
int b64( char *, char *, int );

/* Translation Table as described in RFC1113 */
static const char cb64[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

int main( int argc, char *argv[] ) {
  int retcode = 0;

  if( argc != 2 ) {
    fprintf( stderr, "Usage: %s <fname>\n", argv[0] );
    exit( 1 );
  }
  char *ofname;

  ofname = (char *)malloc( strlen( argv[1] ) + 5 );
  memset( ofname, '\0', strlen( argv[1] ) + 5 );
  sprintf( ofname, "%s.b64", argv[1] );
  retcode = b64( argv[1], ofname, 72 );

  return 0;
}

/* encode 3 8-bit binary bytes as 4 '6-bit' characters */
void encodeblock( unsigned char in[3], unsigned char out[4], int len ) {
  out[0] = cb64[in[0] >> 2];
  out[1] = cb64[ ((in[0] & 0x03) << 4) | ((in[1] & 0xf0) >> 4) ];
  out[2] = (unsigned char)(len > 1 ? cb64[ ((in[1] & 0x0f) << 2) | ((in[2] & 0xc0) >> 6) ] : '=');
  out[3] = (unsigned char)(len > 2 ? cb64[ in[2] & 0x3f ] : '=');
}

void encode( FILE *infile, FILE *outfile, int linesize ) {
  unsigned char in[3];
  unsigned char out[4];
  int i;
  int len;
  int blocksout = 0;

  while( !feof(infile) ) {
    len = 0;
    for( i = 0; i < 3; i++ ) {
      in[i] = (unsigned char)getc( infile );
      if( !feof( infile )) {
        len++;
      } else {
        in[i] = 0;
      }
    }
    if( len ) {
      encodeblock( in, out, len );
      for( i = 0; i < 4; i++ ) {
        putc( out[i], outfile );
      }
      blocksout++;
    }
    if( blocksout >= (linesize / 4) || feof( infile )) {
      if( blocksout ) {
        fprintf( outfile, "\r\n" );
      }
      blocksout = 0;
    }
  }
}

char *b64_message( int errcode ) {
  char *msgs[ B64_MAX_MESSAGES ] = {
    "b64:000:Invalid Message Code.",
    "b64:001:Syntax Error -- check help for usage.",
    "b64:002:File Error Opening/Creating Files.",
    "b64:003:File I/O Error -- Note: output file not removed.",
    "b64:004:Error on output file close.",
    "b64:004:linesize set to minimum."
  };
  char *msg = msgs[0];

  if( errcode > 0 && errcode < B64_MAX_MESSAGES ) {
    msg = msgs[errcode];
  }

  return msg;
}

/* 'engine' that opens streams and calls encode/decode */
int b64( char *infilename, char *ofname, int linesize ) {
  FILE *infile;
  int retcode = B64_FILE_ERROR;

  if( !infilename ) {
    infile = stdin;
  } else {
    infile = fopen( infilename, "rb" );
  }
  if( !infile ) {
    perror( infilename );
  } else {
    FILE *outfile;
    if( !ofname ) {
      outfile = stdout;
    } else {
      outfile = fopen(ofname, "wb");
    }
    if( !outfile ) {
      perror( ofname );
    } else {
      encode( infile, outfile, linesize );
      if( ferror( infile ) || ferror( outfile )) {
        retcode = B64_FILE_IO_ERROR;
      } else {
        retcode = 0;
      }
      if( outfile != stdout ) {
        if( fclose( outfile ) != 0 ) {
          perror( b64_message( B64_ERROR_OUT_CLOSE ));
          retcode = B64_FILE_IO_ERROR;
        }
      }
    }
    if( infile != stdin ) {
      fclose( infile );
    }
  }

  return(retcode);
}

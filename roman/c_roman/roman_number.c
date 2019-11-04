#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main( int argc, char *argv[] ) {
  int a;
  int b;
  int c;
  int d;
  int e;

//clrscr();
//printf("Input a  number (between 1-3000): ");
//scanf("%d", &e);
  e = 300;
  //while(e == 0||e>3000) {
  //  printf ("ERROR: Invalid Input!");
  //  printf ("Enter the number again:");
  //  scanf ("%d",&e);
  //}
  if( e > 3000 ) {
    printf( "Invalid" );
  }
  a = (e / 1000) * 1000;
  b = ((e / 100) % 10) * 100;
  c = ((e / 10) % 10) * 10;
  d = ((e / 1) % 10) * 1;

  if( a == 1000 ) {
    printf( "M" );
  } else if( a == 2000 ) {
    printf( "MM" );
  } else if( a == 3000 ) {
    printf( "MMM" );
  }

  if( b == 100 ) {
    printf( "C" );
  } else if( b == 200 ) {
    printf( "CC" );
  } else if( b == 300 ) {
    printf( "CCC" );
  } else if( b == 400 ) {
    printf( "CD" );
  } else if( b == 500 ) {
    printf( "D" );
  } else if( b == 600 ) {
    printf( "DC" );
  } else if( b == 700 ) {
    printf( "DCC" );
  } else if( b == 800 ) {
    printf( "DCCC" );
  } else if( b == 900 ) {
    printf( "CM" );
  }

  if( c == 10 ) {
    printf( "X" );
  } else if( c == 20 ) {
    printf( "XX" );
  } else if( c == 30 ) {
    printf( "XXX" );
  } else if( c == 40 ) {
    printf( "XL" );
  }else if( c == 50 ) {
    printf( "L" );
  }else if( c == 60 ) {
    printf( "LX" );
  }else if( c == 70 ) {
    printf( "LXX" );
  }else if( c == 80 ) {
    printf( "LXXX" );
  }else if( c == 90 ) {
    printf( "XC" );
  }

  if( d == 1 ) {
    printf( "I" );
  }else if( d == 2 ) {
    printf( "II" );
  }else if( d == 3 ) {
    printf( "III" );
  }else if( d == 4 ) {
    printf( "IV" );
  }else if( d == 5 ) {
    printf( "V" );
  }else if( d == 6 ) {
    printf( "VI" );
  }else if( d == 7 ) {
    printf( "VII" );
  }else if( d == 8 ) {
    printf( "VIII" );
  }else if( d == 9 ) {
    printf( "IX" );
  }

  printf( " = '%d'\n", e );
  return 0;
}

#include <stdio.h>
#include <stdlib.h>

/* Year to check (> 1581). */
/*
   Rule 1: If the year is divisible by 400, it IS a leap year.
   Rule 2: If the year is divisible by 100, it IS NOT a leap year.
   Rule 3: If the year is divisible by 4, it IS a leap year.
 */
int leap_year( int );
int isLeapYear( int );

int main( int argc, char *argv[] ) {
  int idx_i = 0;

  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>", argv[0] );
    exit( 1 );
  }

  for( idx_i = 1999; idx_i < 2101; idx_i++ ) {
    fprintf(stdout, "isLeapYear(%d)=<%d>\n", idx_i, isLeapYear(idx_i));
  }
  return 0;
}

int isLeapYear( int year ) {
  if( year > 1581 ) {
    return(((year % 4 == 0) && (year % 100 > 0)) || (year % 400 == 0));
  } else {
    return 0;
  }
}

int leap_year( int year ) {
  return((year % 400 == 0) || ((year % 100 > 0) && (year % 4 == 0)));
}

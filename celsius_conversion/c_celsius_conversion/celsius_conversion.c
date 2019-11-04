#include <stdio.h>
#include <stdlib.h>

double toFahrenheit ( double );
double toCelsius ( double );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0]);
    exit( 1 );
  }

  printf("toFahrenheit(%f)=<%f>\n", 21.0, toFahrenheit(21.0));
  printf("toCelsius(%f)=<%f>\n", 70.0, toCelsius(70.0));
  return 0;
}

double toFahrenheit ( double x ) {
  return  x * (9.0/5.0) + 32.0;
}

double toCelsius ( double x ) {
  return (x - 32.0) * (5.0/9.0);
}

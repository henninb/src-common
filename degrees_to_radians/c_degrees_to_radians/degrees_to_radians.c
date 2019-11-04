#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double degrees2radians( int, int, int );
double radians2degrees( double );
double adj360( double );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  printf("=============\n");
  degrees2radians(44, 53, 0);
  printf("=============\n");
  degrees2radians(93, 13, 0);
  printf("=============\n");
  radians2degrees(1.626938);
  printf("=============\n");
  return 0;
}

//dd:mm:ss.sssss
//dd:mm:ss
//double degrees2radians( char *degrees_str ) {
//Minneapolis/St. Paul AP   44° 53' N     93° 13' W
//"44.98/-93.26/-6 Minneapolis MN
//LM_sidereal_time(2454985.50, -93.26);
double degrees2radians( int hours, int minutes, int seconds ) {
  double degrees;
  double radians;

  degrees = (double)(hours) + (1.0/60.0) * (double)(minutes) + (1.0/3600.0) * (double)(seconds);
  radians = (degrees)*(M_PI/180);
  fprintf(stdout, "degrees: %lf\n", degrees);
  fprintf(stdout, "radians: %lf\n", radians);
  return degrees;
}

double radians2degrees( double radians ) {
  double degrees;
  int hh;
  int mm;
  int ss;

  degrees = (180/M_PI) * radians;
  hh = (int)degrees;
  mm = (int)((degrees - (int)(degrees)) * 60);
  ss = (int)((degrees - (int)(degrees))*60 - mm) * 60;

  fprintf(stdout, "%d:%d:%d\n", hh, mm, ss);
  fprintf(stdout, "radians: %lf\n", radians);
  fprintf(stdout, "degrees: %lf\n", degrees);
  return degrees;
}

double adj360( double deg ) {
  while( deg < 0.0 ) {
    deg += 360.0;
  }

  while( deg > 360.0 ) {
    deg -= 360.0;
  }

  return(deg);
}

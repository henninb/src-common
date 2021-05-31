#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include <unistd.h>

double greenwichMeanSiderealTime( double );
double localMeanSiderealTime( double, double );
double JulianDate( int, int, int );
double getGmtTime();
double fractionalPart( double );
void printHoursMinutesSeconds( double );
double julian_date_time( int, int, int, double );
int dateMonth();
int dateYear();
int dateDay();

int main( int argc, char *argv[] ) {
  double jd;
  double lmst;
  double gmst;

  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0] );
    return 0;
  }

  while(1) {
    //"44.98/-93.26/-6 Minneapolis MN
    //localMeanSiderealTime(2454985.50, -93.26);
    jd = julian_date_time( dateDay(), dateMonth(), dateYear(), getGmtTime());
    printf( "jd=%f\n", jd );
    lmst = localMeanSiderealTime(jd, -93.263);
    printf("Minneapolis (Local Sidereal Time) is: ");
    printHoursMinutesSeconds(lmst);
    gmst = greenwichMeanSiderealTime(jd);
    printf("Greenwich (Mean) Sidereal Time is: ");
    printHoursMinutesSeconds(gmst);
    sleep(1);
  }
  //lmst - Local Mean Sidereal Time
  //lmst = gmst + (observer's east longitude)

  return 0;
}

int dateYear() {
  time_t now;
  struct tm *tm_ptr;

  now = time( NULL );
  tm_ptr = localtime( &now );
  return tm_ptr->tm_year + 1900;
}

int dateMonth() {
  time_t now;
  struct tm *tm_ptr;

  now = time( NULL );
  tm_ptr = localtime( &now );
  return tm_ptr->tm_mon + 1;
}

int dateDay() {
  time_t now;
  struct tm *tm_ptr;

  now = time( NULL );
  tm_ptr = localtime( &now );
  return tm_ptr->tm_mday;
}

double getGmtTime() {
  time_t now;
  struct tm *tm_ptr;
  //double UT;
  //double tz_diff = 5.0;

  now = time( NULL );
  //tm_ptr = localtime(&now);
  tm_ptr = gmtime(&now);

  //return (tm_ptr -> tm_hour) + (tm_ptr -> tm_min)/60.0 + (tm_ptr -> tm_sec)/3600.0 + tz_diff;
  return (tm_ptr->tm_hour) + (tm_ptr->tm_min) / 60.0 + (tm_ptr->tm_sec) / 3600.0;
}

//Greenwich (Mean) Sidereal Time
double greenwichMeanSiderealTime( double jd ) {
  double t_eph;
  double ut;
  double mjd0;
  double mjd;

  mjd = jd - 2400000.5;
  mjd0 = (double)(int)(mjd);
  ut = (mjd - mjd0) * 24.0;
  //printf("ut=%f\n", ut);
  t_eph = (mjd0 - 51544.5) / 36525.0;
  return 6.697374558 + 1.0027379093 * ut + (8640184.812866 + (0.093104 - 0.0000062 * t_eph) * t_eph) * t_eph / 3600.0;
}

double localMeanSiderealTime( double jd, double longitude ) {
  double gmst = greenwichMeanSiderealTime( jd );
  double lmst = 24.0 * fractionalPart((gmst + longitude / 15.0) / 24.0 );

  return lmst;
}

void printHoursMinutesSeconds( double time ) {
  int h = (int)time % 24;
  int min = (int)(60.0 * fractionalPart( time ));
  int secs = (int)(60.0 * (60.0 * fractionalPart( time ) - min));

  printf( "%02d:%02d:%02d\n", h, min, secs );
}

double fractionalPart( double X ) {
  X = X - (double)(int)(X);
  if( X < 0 ) {
    X = X + 1.0;
  }
  return X;
}

//julian date of current time - clock
double julian_date_time( int d, int m, int y, double u ) {
  if( y < 1900 ) {
    y = y + 1900;
  }
  if( m < 3 ) {
    m = m + 12;
    y = y - 1;
  }

  return ((double)(int)(365.25 * (y + 4716))) + ((double)(int)(30.6001 * (m + 1))) + (double)d - 13 - 1524.5 + u / 24.0;
}

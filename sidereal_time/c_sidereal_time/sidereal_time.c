#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include <unistd.h>

double GM_sidereal_time( double );
double LM_sidereal_time( double, double );
double JulianDate( int, int, int );
double getGmtTime();
double frac( double );
void PrintHoursMinutesSeconds( double );
double julian_date_time( int, int, int, double );
int dateMonth();
int dateYear();
int dateDay();

int main( int argc, char *argv[] ) {
  double jd;
  double LMST;
  double GMST;

  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0] );
    return 0;
  }

  while(1) {
    //"44.98/-93.26/-6 Minneapolis MN
    //LM_sidereal_time(2454985.50, -93.26);
    jd = julian_date_time( dateDay(), dateMonth(), dateYear(), getGmtTime());
    printf( "jd=%f\n", jd );
    LMST = LM_sidereal_time(jd, -93.263);
    printf("Minneapolis (Local Sidereal Time) is: ");
    PrintHoursMinutesSeconds(LMST);
    GMST = GM_sidereal_time(jd);
    printf("Greenwich (Mean) Sidereal Time is: ");
    PrintHoursMinutesSeconds(GMST);
    sleep(1);
  }
  //LMST - Local Mean Sidereal Time
  //LMST = GMST + (observer's east longitude)

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
double GM_sidereal_time( double jd ) {
  double t_eph;
  double ut;
  double MJD0;
  double MJD;

  MJD = jd - 2400000.5;
  MJD0 = (double)(int)(MJD);
  ut = (MJD - MJD0) * 24.0;
  //printf("ut=%f\n", ut);
  t_eph = (MJD0 - 51544.5) / 36525.0;
  return 6.697374558 + 1.0027379093 * ut + (8640184.812866 + (0.093104 - 0.0000062 * t_eph) * t_eph) * t_eph / 3600.0;
}

double LM_sidereal_time( double jd, double longitude ) {
  double GMST = GM_sidereal_time( jd );
  double LMST = 24.0 * frac((GMST + longitude / 15.0) / 24.0 );

  //PrintHoursMinutesSeconds( LMST );
  return LMST;
}

void PrintHoursMinutesSeconds( double time ) {
  int h = (int)time % 24;
  int min = (int)(60.0 * frac( time ));
  int secs = (int)(60.0 * (60.0 * frac( time ) - min));

  printf( "%02d:%02d:%02d\n", h, min, secs );
}

double frac( double X ) {
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

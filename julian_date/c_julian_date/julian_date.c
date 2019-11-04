#include <stdio.h>
#include <stdlib.h>
#include <time.h>

double getGmtTime();
int dateMonth();
int dateYear();
int dateDay();
double julian_date( int, int, int );
double julian_date_utc( int, int, int, double );

int main( int argc, char *argv[] ) {
  double jd = 0.0;
  double jd_utc = 0.0;
  int utc_year = 0;
  int utc_day = 0;
  int utc_month = 0;
  int local_year = 0;
  int local_day = 0;
  int local_month = 0;
  time_t now = 0;
  struct tm *local = NULL;
  //struct tm *utc;

  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  now = time(NULL);
  local = localtime(&now);
  //utc = gmtime(&now);

  utc_year = local->tm_year + 1900;
  utc_day = local->tm_mday;
  utc_month = local->tm_mon + 1;
  local_year = local->tm_year + 1900;
  local_day = local->tm_mday;
  local_month = local->tm_mon + 1;

  jd = julian_date(local_year, local_month, local_day);
  jd_utc = julian_date_utc(utc_year, utc_month, utc_day, getGmtTime());
  printf("Local date: %d-%02d-%02d\n", local_year, local_month, local_day);
  printf("Julian date: %.2lf\n", jd);
  printf("Julian datetime UTC: %f\n", jd_utc);
  return 0;
}

double julian_date( int y, int m, int d ) {
  y += 8000;
  if( m < 3 ) {
    y--;
    m += 12;
  }
  return (double)((y * 365) + (y / 4) - (y / 100) + (y / 400) - 1200820 + (m * 153 + 3) / 5 - 92 + d - 1) - 0.5;
}

double julian_date_utc( int y, int m, int d, double u ) {
  if( y < 1900 ) {
    y = y + 1900;
  }
  if( m < 3 ) {
    m = m + 12;
    y = y - 1;
  }

  return ((double)(int)(365.25 * (y + 4716))) + ((double)(int)(30.6001 * (m + 1))) + (double)d - 13 - 1524.5 + u / 24.0;
}

double getGmtTime() {
  time_t now = 0;
  struct tm *tm_ptr = NULL;

  now = time(NULL);
  tm_ptr = gmtime(&now);

  //printf ("UTC time and date: %s", asctime(tm_ptr));
  //printf("getGmtTime() = %f\n", (tm_ptr->tm_hour) + (tm_ptr->tm_min) / 60.0 + (tm_ptr->tm_sec) / 3600.0);
  return (tm_ptr->tm_hour) + (tm_ptr->tm_min) / 60.0 + (tm_ptr->tm_sec) / 3600.0;
}

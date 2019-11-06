#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int dateMonth(void);
int dateYear(void);
int dateDay(void);
int day_of_week( int, int );
double julian_date( int year, double doy );
int day_of_year( int, int, int );

int main( int argc, char *argv[] ) {
  int day = 0;
  int month = 0;
  int year = 0;
  int doy = 0;
  int weekday = 0;

  doy = day_of_year(dateYear(), dateMonth(), dateDay());

  printf("dow=<%d> where 1=SUN, 2=MON, 3=TUE, 4=WED, 5=THU, 6=FRI, 7=SAT\n", day_of_week(doy, year));

  day = 29;
  month = 9;
  year = 2018;

  weekday  = (day += month < 3 ? year-- : year - 2, 23*month/9 + day + 4 + year/4- year/100 + year/400)%7;
  printf("dow=<%d> where 0=SUN, 1=MON, 2=TUE, 3=WED, 4=THU, 5=FRI, 6=SAT\n", weekday);

  return 0;
}

int dow(int year, int month, int day) {
  int weekday = 0;

  if ( month < 3 ) {
      day = day + year;
      year--;
  } else {
      day = day + year - 2;
  }

  weekday = (23 * month/9) + day + 4 + year/4 - year/100 + year/400;
  weekday = weekday % 7;

  printf("dow=<%d> where 0=SUN, 1=MON, 2=TUE, 3=WED, 4=THU, 5=FRI, 6=SAT\n", weekday);
  return weekday;
}


int day_of_week( int doy, int year ) {
  long day;

  day = julian_date( year, (double)(doy + 0.5)) + 2;
  return(day - 7 * ((day - 1) / 7));
}

/* returns Julian Day (J.D) = number of days
   elapsed since noon on Jan. 1, 4713 BC, on the Julian calendar.
   (This is thought by some to be the moment the earth was created.)
   Julian Days are used by astromoners to avoid the
   complexities of the various calendars. */
double julian_date( int year, double doy ) {
  int prev_year = 0;
  int century = 0;
  int num_leaps = 0;
  double jd = 0.0;

  prev_year = year - 1;
  century = prev_year / 100;
  num_leaps = (int)(prev_year / 4) - century + (int)(century / 4);
  jd = 1721425.0 + 365.0 * (double)prev_year + (double)num_leaps - 0.5 + doy;
  return jd;
}

int day_of_year( int year, int month, int mday ) {
  int N1 = 275 * month / 9;
  int N2 = (month + 9) / 12;
  int N3 = (1 + ((year - 4 * (year / 4) + 2) / 3));
  int N = N1 - (N2 * N3) + mday - 30;

  return N;
}

int dateYear() {
  time_t now = 0;
  struct tm *tm_ptr = NULL;

  now = time(NULL);
  tm_ptr = localtime(&now);
  return tm_ptr->tm_year + 1900;
}

int dateMonth() {
  time_t now = 0;
  struct tm *tm_ptr = NULL;

  now = time(NULL);
  tm_ptr = localtime(&now);

  return tm_ptr->tm_mon + 1;
}

int dateDay() {
  time_t now = 0;
  struct tm *tm_ptr = NULL;

  now = time(NULL);
  tm_ptr = localtime(&now);

  return tm_ptr->tm_mday;
}

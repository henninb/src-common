#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

void easterCalculator( int );

int main( int argc, char *argv[] ) {
  int idx_i = 0;

  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  for(idx_i = 2018; idx_i < 2101; idx_i ++ ) {
    easterCalculator(idx_i);
  }
  return 0;
}

void easterCalculator( int year ) {
  struct tm *now = NULL;
  time_t rawtime = 0;
  int day = 0;
  int month = 0;
  int g = 0;
  int c = 0;
  int h = 0;
  int i = 0;

  g = year % 19;
  c = year / 100;
  h = (c - (int)(c / 4) - (int)((8 * c + 13) / 25) + 19 * g + 15) % 30;
  i = h - (int)(h / 28) * (1 - (int)(h / 28) * (int)(29 / (h + 1)) * (int)((21 - g) / 11));

  day   = i - ((year + (int)(year / 4) + i + 2 - c + (int)(c / 4)) % 7) + 28;
  month = 3;

  if (day > 31) {
    month = month + 1;
    day = day - 31;
  }
  now = (struct tm*) malloc(sizeof(struct tm));
  now->tm_sec = 0;
  now->tm_min = 0;
  now->tm_hour = 0;
  now->tm_mday = day;
  now->tm_mon = month - 1;
  now->tm_year = year - 1900;
  now->tm_isdst = 1;
  rawtime = mktime(now);
  printf("INFO: EasterSunday(%d)=<%s>\n", year, strtok(asctime(now), "\n"));
}

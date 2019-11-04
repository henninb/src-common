#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

int isDaylightTime(void);
void date_today(void);

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0] );
    exit(1);
  }

  date_today();
  isDaylightTime();
  return 0;
}

void date_today() {
  struct tm *local = NULL;
  struct tm *utc = NULL;
  time_t timeinfo = 0;

  timeinfo = time(NULL);
  local = localtime(&timeinfo);
  printf("local=<%s>\n", strtok(asctime(local), "\n"));
  printf("local=<%d/%d/%d %d:%d:%d>\n", local->tm_year + 1900, local->tm_mon + 1, local->tm_mday, local->tm_hour, local->tm_min, local->tm_sec);
  utc = gmtime(&timeinfo);
  printf("utc=<%s>\n", strtok(asctime(utc), "\n"));
  printf("utc=<%d/%d/%d %d:%d:%d>\n", utc->tm_year + 1900, utc->tm_mon + 1, utc->tm_mday, utc->tm_hour, utc->tm_min, utc->tm_sec);
}

int isDaylightTime() {
  struct tm *local = NULL;
  time_t timeinfo = 0;

  timeinfo = time(NULL);
  local = localtime(&timeinfo);

  if( local->tm_isdst ) {
    return 1;
  }
  return 0;
}

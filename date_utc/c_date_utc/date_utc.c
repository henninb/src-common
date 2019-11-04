#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

void date_utc(void);
int isDaylightTime(void);

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0] );
    exit(1);
  }

  date_utc();
  printf("isDaylightTime()=<%d>\n", isDaylightTime());
  return 0;
}

void date_utc() {
  struct tm *local = NULL;
  struct tm *utc = NULL;
  struct tm now = {0};
  time_t timeinfo = 0;
  //time_t rawtime = 0;

  now.tm_sec = 0;
  now.tm_min = 0;
  now.tm_hour = 0;
  now.tm_mday = 1;
  now.tm_mon = 1 - 1;
  now.tm_year = 2018 - 1900;
  now.tm_isdst = 0;
  //rawtime = mktime(&now);

  //printf ("sizeof time_t is: %ld\n", sizeof(time_t));
  timeinfo = time(NULL);
  local = localtime(&timeinfo);
  printf("localtime=<%s>\n", strtok(asctime(local), "\n"));
  utc = gmtime(&timeinfo);
  printf("INFO: utc=<%s>\n", strtok(asctime(utc), "\n"));
  printf("INFO: rawtime=<%s>\n", strtok(asctime(&now), "\n"));
  printf("INFO: utc=<%d/%d/%d %d:%d:%d>\n", utc->tm_year + 1900, utc->tm_mon + 1, utc->tm_mday, utc->tm_hour, utc->tm_min, utc->tm_sec);
}

int isDaylightTime() {
  struct tm *local = NULL;
  time_t timeinfo;

  timeinfo = time(NULL);
  local = localtime(&timeinfo);

  if( local->tm_isdst ) {
    return 1;
  }
  return 0;
}

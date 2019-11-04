#if defined(_WIN32)
  #define OS_WINDOWS 1 // Windows
#elif defined(_WIN64)
  #define OS_WINDOWS 1 // Windows
#else
  //error Unsupported operating system
#endif

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

void epochToDatetime( long );
int computeDateDoy( int, int, int );
long datetimeToEpoch( int y, int m, int mday, int h, int min, int s );

int main( int argc, char *argv[] ) {
  long epoch = 0L;
  time_t utc_datetime = 0;
  struct tm *utc = NULL;

  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  utc_datetime = time(NULL);
  utc = gmtime(&utc_datetime);
  epoch = datetimeToEpoch(utc->tm_year + 1900, utc->tm_mon + 1, utc->tm_mday, utc->tm_hour, utc->tm_min, utc->tm_sec);
  printf("epoch=<%ld>\n", epoch);
  printf("utc=<%d/%d/%d %d:%d:%d>\n", utc->tm_year + 1900, utc->tm_mon + 1, utc->tm_mday, utc->tm_hour, utc->tm_min, utc->tm_sec);
  epochToDatetime(epoch);
  return 0;
}

// need to add logic to do the conversion
void epochToDatetime( long epoch ) {
  printf("epoch=<%ld>\n", epoch);
  printf("utc=<%s>\n", strtok(asctime(gmtime((time_t *) &epoch)), "\n"));
  printf("localtime=<%s>\n", strtok(asctime(localtime((time_t *) &epoch)), "\n"));
}

int computeDateDoy( int year, int month, int mday ) {
  int n1 = 275 * month / 9;
  int n2 = (month + 9) / 12;
  int n3 = (1 + ((year - 4 * (year / 4) + 2) / 3));
  int n = n1 - (n2 * n3) + mday - 30;

  return n;
}

long datetimeToEpoch( int years, int months, int mday, int hours, int mins, int secs ) {
  int epoch_start = 1970;
  int total_days = 0;
  int total_secs = 0;

  while( epoch_start < years ) {
    total_days = total_days + computeDateDoy(epoch_start, 12, 31);
    epoch_start = epoch_start + 1;
  }
  total_days = total_days + computeDateDoy(years, months, mday - 1);
  total_secs = (total_days * 86400) + (hours * 60 * 60) + (mins * 60) + secs;
  return total_secs;
}

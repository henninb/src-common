#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main(int argc, char *argv[]) {
  //time_t t = time(NULL);
  time_t rawtime;
  //struct tm lt = {0};
  struct tm *ptm;
  //char *tz = NULL;
  char tz[25] = {0};

  rawtime = time(NULL);

  if (rawtime == -1) {
    printf("The time() function failed");
  }

  ptm = localtime(&rawtime);
  if (ptm == NULL) {
    printf("The localtime() function failed");
    return 1;
  }

  memset(tz, '\0', sizeof(tz));
  strftime(tz, sizeof(tz), "%Z", ptm);
  printf("TZ=<%s>\n", tz);
  return 0;
}

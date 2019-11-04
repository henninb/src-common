#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

#ifndef _POSIX_C_SOURCE
char *strdup(const char *s)
{
  int l = strlen(s);
  char *r = malloc(l+1);
  memcpy(r, s, l+1);
  return r;
}
#endif

#define truth(X) ((X)=='*'?true:false)
void rule_90(char *evstr) {
  int i;
  int l = strlen(evstr);
  bool s[3];
  char *cp = strdup(evstr);

  for(i=0;i < l; i++) {
    s[1] = truth(cp[i]);
    s[0] = (i-1) < 0 ? false : truth(cp[i-1]);
    s[2] = (i+1) < l ? truth(cp[i+1]) : false;
    if ( (s[0] && !s[2]) || (!s[0] && s[2]) ) {
      evstr[i] = '*';
    } else {
      evstr[i] = ' ';
    }
  }
  free(cp);
}


void sierpinski_triangle(int n) {
  int i;
  int l = 1<<(n+1);
  char *b = malloc(l+1);

  memset(b, ' ', l);
  b[l] = 0;
  b[l>>1] = '*';

  printf("%s\n", b);
  for(i=0; i < l/2-1;i++) {
    rule_90(b);
    printf("%s\n", b);
  }

  free(b);
}

int main( int argc, char *argv[] ) {
  sierpinski_triangle(4);
  return 0;
}

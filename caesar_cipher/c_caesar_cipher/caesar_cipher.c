#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define caesar(x) rot(13, x)
#define decaesar(x) rot(13, x)
#define decrypt_rot(x, y) rot((26-x), y)

void rot( int c, char * );

int main( int argc, char *argv[] ) {
  char str[] = "This is a top secret text message!";

  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  printf("Original: %s\n", str);
  caesar(str);
  printf("Encrypted: %s\n", str);
  decaesar(str);
  printf("Decrypted: %s\n", str);

  return 0;
}

void rot( int c, char *str ) {
  int l = strlen(str);
  const char *alpha[2] = {"abcdefghijklmnopqrstuvwxyz", "ABCDEFGHIJKLMNOPQRSTUVWXYZ"};
  int idx_i = 0;

  for (idx_i = 0; idx_i < l; idx_i++) {
    if (!isalpha(str[idx_i])) {
      continue;
    }

    str[idx_i] = alpha[isupper(str[idx_i])][((int)(tolower(str[idx_i])-'a')+c)%26];
  }
}

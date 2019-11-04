#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int luhnCheck( char * );
int luhnSum( char * );
int bank( char * );
void mod10( char * );
int isValidNumber( char * );

int main ( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf(stderr, "Usage: %s <noargs>\n", argv[0]);
    exit(1);
  }

  bank("6011000000000012");
  printf("%d\n", bank("6011000000000012"));
  printf("%d\n", luhnCheck("6011000000000012"));
  printf("%d\n", luhnCheck("6011000000000013"));
  printf("%d\n", luhnCheck("4987002233114458"));
  printf("%d\n", luhnSum("4987002233114458"));
  printf("%d\n", luhnCheck("379126015215813"));
  printf("%d\n", luhnSum("379126015215813"));
  printf("%d\n", isValidNumber("379126015215813"));
  return 0;
}

int luhnCheck( char *cardNumber ) {
  int luhnsum = 0;

  luhnsum = luhnSum(cardNumber);

  if (luhnsum % 10 == 0 ) {
    printf("%s is a valid cardNumber.\n", cardNumber);
    return 1;
  }
  printf("%s is NOT a valid cardNumber.\n", cardNumber);
  return 0;
}

int luhnSum( char *cardNumber ) {
  int factor = 1;
  int luhnsum = 0;
  int inum = 0;
  int idx;

  for( idx = strlen(cardNumber) - 1; idx >= 0; idx-- ) {
    inum = cardNumber[idx] - 48;
    if( factor == 2 ) {
      inum = inum * 2;
      if( inum > 9 ) {
        // sum of the two digits for the two digits sum
        inum = inum - 9;
      }
    }

    luhnsum += inum;
    //factor = (factor == 1) ? 2 : 1;
    if( factor == 1 ) {
      factor = 2;
    } else {
      factor = 1;
    }
  }
  return luhnsum;
}

int isValidNumber( char *cardNumber ) {
  int n = 0;
  int idx_i = 0;
  int alternate = 0;
  int sum = 0;

  if (!cardNumber) {
    return 0;
  }

  n = strlen(cardNumber);

  if (n < 13 || n > 19) {
    return 0;
  }

  for ( alternate = 0, sum = 0, idx_i = n - 1; idx_i > -1; --idx_i ) {
    n = cardNumber[idx_i] - '0';

    if (alternate) {
      n *= 2;
      if (n > 9) {
        n = (n % 10) + 1;
      }
    }
    alternate = !alternate;
    sum += n;
  }

  printf("sum = %d\n", sum);
  return (sum % 10 == 0);
}

void mod10( char *cardNumber ) {
  int idx = 0;
  int status = 0;

  if( strlen( cardNumber ) != 16 ) {
    fprintf( stderr, "ABORT: credit card cardNumber not 16 chars.\n" );
    exit( 1 );
  }

  for( idx = 0; idx < 16; idx++ ) {
    status += cardNumber[idx] - 48;
  }

  printf( "%d\n", status );
  printf( "%d\n", status % 10 );
}

/*
 * Return last digit of a bank card (e.g. credit card)
 * Receives all the digits, but the last one as input
 * By Diomidis Spinellis <dds@doc.ic.ac.uk>
 */
int bank( char *credit_card ) {
  int idx_i;
  int s = 0;
  int l = 0;
  int t = 0;

  l = strlen(credit_card);
  for( idx_i = 0; idx_i < l ; idx_i++ ) {
    t = (credit_card[l - idx_i - 1] - '0') * (1 + ((idx_i + 1) % 2));
    s += t < 10 ? t : t - 9;
  }
  return 10 - s % 10;
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

//#define SEED 35791246

void pi_calculate( long );
int rec_count( long, long );
void pi_calculate_r( long );
double pi_calculate1( void );
void calculatePi( int );

int main( int argc, char* argv[] ) {
  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0] );
    exit(1);
  }

  pi_calculate(17559000);
  printf("here\n");
  calculatePi(100);
  printf("here\n");
  //pi_calculate_r(1200);
  return 0;
}

void calculatePi(int digits) {
  digits = digits + 1;
  unsigned int x[digits*10/3+2] = {0};
  unsigned int r[digits*10/3+2] = {0};
  unsigned int pi[digits] = {0};
  int idx_j = 0;
  int idx_i = 0;
  unsigned int carry = 0;
  unsigned num = 0;
  unsigned dem = 0;
  //var result = "";
  unsigned int c = 0;

  for ( idx_j = 0; idx_j < sizeof(x); idx_j++) {
      x[idx_j] = 20;
  }
  //printf("got here1\n");
  for ( idx_i = 0; idx_i < digits; idx_i++ ) {
      carry = 0;
      for ( idx_j = 0; idx_j < sizeof(x); idx_j++) {
          num = (unsigned int)(sizeof(x) - idx_j - 1);
          dem = num * 2 + 1;

          x[idx_j] += carry;

          uint q = x[idx_j] / dem;
          r[idx_j] = x[idx_j] % dem;

          carry = q * num;
      }

      pi[idx_i] = (x[sizeof(x)-1] / 10);
      r[sizeof(x) - 1] = x[sizeof(x) - 1] % 10;
      for ( idx_j = 0; idx_j < sizeof(x); idx_j++) {
          x[idx_j] = r[idx_j] * 10;
      }
  }

  for( idx_i = sizeof(pi) - 1; idx_i >=0; idx_i--) {
      pi[idx_i] += c;
      c = pi[idx_i] / 10;
      //printf("h ");
      //printf("%d ", c);
      //printf("%d ", pi[idx_i]);
      //result = (pi[idx_i] % 10).ToString() + result;
  }

  //return result;
}

double pi_calculate1() {
  int counter = 0;
  int sum = 0;
  int input = 1000;
  //PI = 4 * (1 - 1/3 + 1/5 + ... + Math.pow(-1, idx_i + 1) / (2 * idx_i - 1));
  for( counter=1;counter<input;counter++ ) {
    sum += pow(-1,counter + 1)/((2*counter) - 1);
  }
  return sum;
}

void pi_calculate( long niter ) {
  double x = 0.0;
  double y = 0.0;
  int idx_i = 0;
  long count = 0; /* # of points in the 1st quadrant of unit circle */
  double z = 0.0;
  double pi = 0.0;

  // initialize random numbers
  //srand(SEED);
  srand((unsigned)(time(0)));
  count = 0;
  for( idx_i = 0; idx_i < niter; idx_i++ ) {
    x = (double)rand()/RAND_MAX;
    y = (double)rand()/RAND_MAX;
    z = x * x + y * y;
    if( z <= 1 ) {
      count++;
    }
  }
  pi = (double)count/niter*4;
  printf("Numbers of trials= %ld , estimate of pi is %g \n", niter, pi);
}


void pi_calculate_r( long niter ) {
  long count = 0L;
  double pi = = 0.0;

  srand((unsigned)(time(0)));
  printf("here\n");
  count = rec_count(0, niter);
  printf("here1\n");
  pi = (double)count/niter*4;
  printf("Numbers of trials= %ld , estimate of pi is %g \n", niter, pi);
}

int rec_count( long idx_i, long niter ) {
  double x = 0.0;
  double y = 0.0;

  //printf("rec_count()\n");
  if( idx_i == niter ) {
    printf("rec_count() = 0\n");
    return 0;
  } else {
    x = (double)rand()/RAND_MAX;
    y = (double)rand()/RAND_MAX;
    if( ((int)(x * x + y * y)) < 2 ) {
      return rec_count(idx_i + 1, niter) + 1;
    }
    return rec_count(idx_i + 1, niter) + 0;
  }
}

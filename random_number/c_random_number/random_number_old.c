#include <stdio.h>
#include <stdlib.h>

int rand1( int lim );
int rand2( int lim );
int rand3( int lim );

int main( int argc, char *argv[] ) {
  int k;
  int rnd1;
  int rnd2;
  int rnd3;
  int sum1;
  int sum2;
  int sum3;

  sum1 = sum2 = sum3 = 0;
  puts( "Random numbers between 1 and 44:\n" );
  printf( "%15s%10s %10s %10s", "Custom functions", "rnd1()", "rnd2()", "rnd3()" );
  for( k = 0; k < 40; k++ ) {
    rnd1 = rand1( 44 );   // method one
    rnd2 = rand2( 44 );   // method two
    rnd3 = rand3( 44 );   // method three
    printf( "\n%25d %10d %10d", rnd1, rnd2, rnd3 );
    sum1 += rnd1;
    sum2 += rnd2;
    sum3 += rnd3;
  }
  printf( "\n\n%15s%10d %10d %10d   (ideal 22)\n",
          "   Average:", sum1 / k, sum2 / k, sum3 / k );
  getchar();  // wait
  return 0;
}

int rand1( int lim ) {
  static long a = 100001;

  a = (a * 125) % 2796203;
  return((a % lim) + 1);
}

int rand2( int lim ) {
  static long a = 1;  // could be made the seed value

  a = (a * 32719 + 3) % 32749;
  return((a % lim) + 1);
}

int rand3( int lim ) {
  static long a = 3;

  a = (((a * 214013L + 2531011L) >> 16) & 32767);

  return((a % lim) + 1);
}

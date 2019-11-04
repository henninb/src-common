#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void quadratic( double, double, double );
//void quadratic_formula( float, float, float );

int main( int argc, char *argv[] ) {
  if( argc != 1 ) {
    fprintf( stderr, "Usage: %s <noargs>\n", argv[0] );
    exit(1);
  }

  //5,9
  quadratic(1, -14, 45);
  //quadratic_formula(1, -14, 45);
  //-10 and -7
  quadratic(1, 17, 70);
  //quadratic_formula(1, 17, 70);
  return 0;
}

void quadratic( double a, double b, double c ) {
  double discriminant = ((b * b) - (4.0 * a * c));
  double root1 = 0.0;
  double root2 = 0.0;

  if( discriminant < 0.0 ) {
    printf("No real roots\n");
    return;
  } else {
    root1 = ((-1.0 * b) - (sqrt(discriminant))) / (2.0 * a);
    root2 = ((-1.0 * b) + (sqrt(discriminant))) / (2.0 * a);
  }

  printf("roots: %.10g %.10g\n", root1, root2);
  //printf("sqrt(discriminant)= %lf\n", sqrt(discriminant));
  //printf("disc %lf\n", discriminant);
  //printf("(-1.0 * b) - (sqrt(discriminant)) = %lf\n", (-1.0 * b) - (sqrt(discriminant)));
}

/*
// does not work
void quadratic_formula(float a, float b, float c ) {
  float d;
  float e;
  float f;
  float x1;
  float x2;
  int opselect;
  //float sqr;
  double discriminant = ((b * b) - (4.0 * a * c));

  if (a == 0 && b == 0 && c == 0) {
    printf ("INFO: Infinite Solution\n");
    return;
  } else if (a==0 && b==0 && c!=0) {
    printf ("INFO: Contradict Solution\n");
    return;
  } else if (a==0 && b!=0 && c!=0) {
    opselect = 3;
  } else if (discriminant < 0) {
    opselect = 4;
  } else if (discriminant == 0) {
    opselect = 5;
  } else {
    opselect = 6;
  }

  switch (opselect) {
    case 1:
      printf ("Infinite Solution\n");
      break;
    case 2:
      printf ("Contradict Solution\n");
      break;
    case 3:
      x1 = -b/a;
      printf ("Single Root x = %4.2f\n", x1);
      break;
    case 4:
      printf("No real roots\n");
      d = (sqrt(b*b) - (4.0*a*c));
      e = -b/(2*a);
      f = d/(2*a);
      printf ("Two complex root x1 = %4.2f and %4.2fi\n", e, f);
      printf ("x2 = %4.2f - %4.2fi", e, f);
      break;
    case 5:
      x1 = ((-1.0 * b) - (sqrt(discriminant))) / (2.0 * a);
      printf ("Repreated Root x = %4.2f\n", x1);
      break;
    case 6:
      x1 = ((-1.0 * b) - (sqrt(discriminant))) / (2.0 * a);
      x2 = ((-1.0 * b) + (sqrt(discriminant))) / (2.0 * a);
      //x1 = (-b + (sqrt(b*b) - (4.0*a*c))) / (2.0 * a);
      //x2 = (-b - (sqrt(b*b) - (4.0*a*c))) / (2.0 * a);
      printf ("Two real root x1 = %4.2f x2 = %4.2f\n", x1, x2);
      break;
  }
}
*/

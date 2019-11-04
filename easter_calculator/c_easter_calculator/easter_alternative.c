/* determine the date of easter for any year in the Gregorian Calendar
   from 1583 onwards */

void easter (int year, int *easter_month, int *easter_day) {
  int a, b, c, d, e, f, g, h, i, k, l, m, p;

  a = year % 19;
  b = year / 100;
  c = year % 100;
  d = b >> 2;
  e = b & 3;
  f = (b+8) / 25;
  g = (b-f+1) / 3;
  h = (19*a+b-d-g+15) % 30;
  i = c >> 2;
  k = c & 3;
  l = (32+(e<<1)+(i<<1)-h-k) % 7;
  m = (a+11*h+22*l) / 451;
  *easter_month  = (h+l-7*m+114) / 31;
  p = (h+l-7*m+114) % 31;
  *easter_day = p+1;
}

/* simpler algorithm to determine the date of easter for any year in the
Gregorian Calendar but only from 1900 -- 2099 */

void easter (int year, int *easter_month, int *easter_day) {
  int B, D, E;

  B = 225 - 11 * (year%19);
  D = ((B-21) % 30) + 21.
  if( D > 48 ) D--;
  E = (year + (year>>2) + D + 1) % 7 .
  *easter_day = D + 7 - E;
  if( *easter_day < 32)
    *easter_month = 3;
  else {
    *easter_day -= 31;
    *easter_month = 4;
    }
}

/* determine the date of easter for any year in the Gregorian Calendar
   from 1583 to 4099 */

void easter (int year, int *easter_month, int *easter_day) {

   int a, b, c;
   int tA, tB, tC, tD, tE;

    a = y \ 100;
    b = y % 19;

   c = ((a-15)>>1) + 202 - 11 * b;
   if( a>26 ) c--;
   if( a>38 ) c--;
   if( a == 21 || a == 24 || a == 25 || a == 33 || a == 36 || a == 37 ) c--;
   c %= 30;
   tA = c + 21;
   if( c == 29 ) tA--;
   if( c == 28 && b>10 ) tA--;
   tB = (tA - 19) % 7;
   c = (40 - a) & 3;
   tC = c;
   if( c>1 ) tC++;
   if( c == 3 ) tC++;
   c = y % 100;
   tD = (c + (c>>2)) % 7;
   tE = ((20-tB-tC-tD) % 7) + 1;
   d = tA + tE;
   if( d > 31 ) {
       d -= 31;
       m = 4;
       }
   else m = 3;
 }

/* date of easter in the Eastern Orthodox church (in Julian Calendar) */
   From Julian Mar 1, 1900, to Julian Feb 29, 2100, the correction is to
   add 13 days to the Julian date to obtain the Gregorian date. */

void easter (int Year, int *easter_month, int *easter_day) {
  int R1, R2, R3, R4, R5, RA, RB, RC;

  R1 = Year % 19;
  R2 = Year & 3;
  R3 = Year % 7;
  RA = 19*R1 + 16;
  R4 = RA % 30;
  RB = (R2<<1) + (R3<<2) + 6*R4;
  R5 = RB % 7;
  RC = R4 + R5;

  if( RC < 11 ) {
      *easter_month = 3;
      *easter_day += 21;
      } else {
      *easter_month = 4;
      *easter_day -= 10;
      }
}

/* date of easter in the Eastern Orthodox church (in Julian Calendar) */

void easter (int year, int *easter_month, int *easter_day) {
  int G, I, J, L;
  G = year % 19;
  I = (19*G + 15) % 30;
  J = (year + (year>>2) + I) % 7;
  L = I - J;
  *easter_month = 3 + (L + 40)/44;
  *easter_day = L + 28 - 31*(EasterMonth>>2);
}

Set y=year m=month d=day.

[ y=1980 m=1 d=1 ]

Set y'=y and m'=m.
Also, if m=1 or 2 subtract 1 from y' and then add 12 to m'.

[ y'=1980 m'=1 y=1979 m=13 d=1 ]

If the date is later than 15 October 1582 (Gregorian
Calendar) then calculate:
   (i)  A = integer part of (y'/100)
   (ii) B = 2-A+integer part of (A/4)
Otherwise set B = 0

[ A=19  B=-13 ]

Calculate C = integer part of (365.25*y')

[ C = int(365.25*1980) = 723,195

and D = integer part of (30.6001*(m+1))

[ D = int(30.6001*(1+1)) = 61

The Julian Date JD is calculated as

 JD = B + C + D + d + 1,720,994.5

[ JD = -13 + 723,195 + 61 + 1 + 1,720,994.5 = 2,444,238.5 ]

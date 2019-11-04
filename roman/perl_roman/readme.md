use Math::Roman qw(roman);
print $a  = roman('I'); #  I
print $a += 2000;       #  MMI
print $a -= "III";      #  MCMXCVIII
print $a -= "MCM";      #  XCVIII

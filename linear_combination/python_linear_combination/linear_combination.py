import sys
import math

def print_linear_combination(x, y, f, g, gcd ):
  print("The Linear Combination is: %d * (%d) + %d * (%d) = %d" % (x, f, y, g, gcd))

def gcd_linear_combination( x, y ):
  a2 = 1
  b3 = 1
  a3 = 0
  b2 = 0
  a1 = x
  b1 = y

  while( 1 ):
    if( a1 == b1 ):
      print_linear_combination(x, y, b2, b3, b1)
      print_linear_combination(x, y, a2, a3, a1)
      break
    elif( a1 > b1 ):
      a1 = a1 - b1
      a2 = a2 - b2
      a3 = a3 - b3
    else:
      b1 = b1 - a1
      b2 = b2 - a2
      b3 = b3 - a3

def main():
  if len(sys.argv) != 1:
    print ("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  gcd_linear_combination(4, 59)
  #print(sys.argv[0])
  #print (str(julian_date(2017,9,23)))
  sys.exit(), end

main()

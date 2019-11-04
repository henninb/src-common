import sys
import os
import time

def euler_phi(n):
  remainder = n
  phi = n
  odd = 0

  if ( n == 0 ):
    return 0

  if( (remainder % 2) == 0 ):
     phi = phi / 2
     while( (remainder % 2) == 0 ):
       remainder = remainder / 2
  odd = 3

  while (odd <= remainder ):
    if (remainder % odd == 0 ):
      phi = phi * (odd - 1) / odd
      while( (remainder % odd) == 0 ):
        remainder = remainder / odd
    odd = odd + 2
  return phi

def main():
  if len(sys.argv) != 1:
    print("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  for idx_i in range(1, 25):
    print ("euler_phi(%d)=<%d>" % (idx_i, euler_phi(idx_i)))
  sys.exit(), end

main()

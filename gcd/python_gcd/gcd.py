import datetime
import sys
import os
import time

def gcd(a, b):
  if b == 0:
    return a
  else:
    return gcd(b, (a % b))

def main():
  if len(sys.argv) != 1:
    print("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  print(gcd(6,4))
  #print(x)
  sys.exit(), end

main()

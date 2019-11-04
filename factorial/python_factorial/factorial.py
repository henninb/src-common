import sys
#import sys, re, os

def factorial(n):
  if n == 0:
    return 0
  elif n == 1:
    return 1
  else:
    return (n * factorial(n - 1))

def main():
  if len(sys.argv) != 1:
    print ("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  for idx_i in range(1, 14):
    print ("factorial(%d)=<%d>" % (idx_i, factorial(idx_i)))
  sys.exit(), end

main()

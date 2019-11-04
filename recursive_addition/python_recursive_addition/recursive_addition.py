import sys
#import sys, re, os

def rec_add(x, y):
  if y == 0:
    return x
  else:
    return (1 + rec_add(x, y - 1))

def main():
  if len(sys.argv) != 1:
    print ("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  print (rec_add(5, 10))
  sys.exit(), end

main()

#import itertools
import sys
import os
import time

def comb(m, lst):
  if m == 0:
    return [[]]
  else:
    return [[x] + suffix for i, x in enumerate(lst)
        for suffix in comb(m - 1, lst[i + 1:])]

#list(itertools.combinations(range(5),3))

def main():
  if len(sys.argv) != 1:
    print ("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  #print(sys.argv[1])
  print (comb(3, range(5)))
  sys.exit(), end

main()


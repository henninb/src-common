import sys
import math

def factors_not_working(n):
  print ("1")
  #for idx_i in range(n - 1, 10):
  test = n - 1
  while(test >= math.sqrt(n)):
    print("number=%d" % test)
    if (n % test) == 0:
      print(int(n/test))
    test = test - 1
  print(n)

def factors(n):
  for idx_i in range(1, n + 1):
    if (n%idx_i) == 0:
      print(int(idx_i))


def main():
  if len(sys.argv) != 1:
    print ("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  factors(100)
  sys.exit(), end

main()

#comment
import sys
#import getopt

def example_function(n):
  try:
    1/0
  except ZeroDivisionError:
    print("WARN: dividing by zero is silly")
  finally:
    print("finally")
    return n

def main():
  if len(sys.argv) != 1:
    print("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  for idx_i in range(1, 10):
    print ("example_function(%d)=<%d>" % (idx_i, example_function(idx_i)))
  sys.exit(), end

main()

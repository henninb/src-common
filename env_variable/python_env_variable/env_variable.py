#comment
import sys
import os
import math

def env_variable_function(n):
  x = 0

  x = (n + n - n) * (n / 1)
  x = x * math.floor(1.25)

  if( x < 0 ):
    x = abs(x)

  return x

def main():
  if len(sys.argv) != 1:
    print("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  print(os.environ['OS'])
  sys.exit(), end

main()

import sys
#import sys, re, os

def function():
  print("function call")

def main():
  if len(sys.argv) != 2:
    print("Usage: %s <arg1>" % sys.argv[0])
    sys.exit(1)
  function()
  sys.exit(), end

main()

#comment
import sys
#import getopt

def isPrime( number ):
    #unsigned long idx_i
    for idx_i in range(2, number - 1):
        if (number % idx_i == 0) and (idx_i != number):
          return 0
    return 1

def main():
  if len(sys.argv) != 1:
    print("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  print(sys.argv[0])
  #print str(fibonacci(5))
  #print "here"
  for idx_i in range(1, 100):
    print ("prime: %d = %d" % (idx_i, isPrime(idx_i)))
  sys.exit(), end

main()


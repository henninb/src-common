#comment
import sys
import math

def toFahrenheit ( x ):
  return  x * (9.0/5.0) + 32.0

def toCelsius ( x ):
  return (x - 32.0) * (5.0/9.0)

def main():
  if len(sys.argv) != 1:
    print ("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  print("toCelsius(70.0)=<" + str(toCelsius(70.0)) + ">")
  print("toFahrenheit(21.0)=<" + str(toFahrenheit(21.0)) + ">")
  sys.exit(), end

main()

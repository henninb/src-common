import sys
import os
import time
import datetime

def easterCalculator(year):
  day = 0
  month = 0
  g = 0
  c = 0
  h = 0
  i = 0

  g = year % 19
  c = year / 100
  h = (c - (c / 4) - ((8 * c + 13) / 25) + 19 * g + 15) % 30
  i = h - (h / 28) * (1 - (h / 28) * (29 / (h + 1)) * ((21 - g) / 11))

  day   = i - ((year + (year / 4) + i + 2 - c + (c / 4)) % 7) + 28
  month = 3

  if (day > 31):
      month = month + 1
      day = day - 31

  print( "Easter Sunday %d-%d-%d" % (year,  month, day))
  return 0
      #return new DateTime(year, month, day)


def main():
  if len(sys.argv) != 1:
    print("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  for idx_i in range(2018, 2100):
    print ("easterCalculator(%d) (%d)" % (idx_i, easterCalculator(idx_i)))
  sys.exit(), end

main()

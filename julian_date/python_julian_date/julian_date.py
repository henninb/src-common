import sys
import math
import datetime

def julian_date( y, m, d ):
    y += 8000
    if m < 3:
      y = y - 1
      m = m + 12

    return math.floor((y * 365) + (y / 4) - (y / 100) + (y / 400) - 1200820 + (m * 153 + 3) / 5 - 92 + d - 1) - 0.5


def main():
  if len(sys.argv) != 1:
    print ("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  #print(sys.argv[0])
  now = datetime.datetime.now()
  print (str(julian_date(now.year, now.month, now.day)))
  sys.exit(), end

main()

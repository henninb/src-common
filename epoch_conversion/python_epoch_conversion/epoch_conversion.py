import sys
import os
import time
from datetime import date
from datetime import datetime

def computeDateDoy( year, month, mday ):
  n1 = int((275 * month) / 9)
  n2 = int((month + 9) / 12)
  n3 = (1 + int((year - 4 * int(year / 4) + 2) / 3))
  n = n1 - (n2 * n3) + mday - 30
  return n

def datetimeToEpoch ( years, months, mday, hours, mins, secs ):
  epoch_start = 1970
  total_days = 0
  total_secs = 0

  while ( epoch_start < years ):
    total_days = total_days + computeDateDoy(epoch_start, 12, 31)
    epoch_start = epoch_start + 1
  total_days = total_days + computeDateDoy(years, months, mday - 1)
  total_secs = (total_days * 86400) + (hours * 60 * 60) + (mins * 60) + secs
  return total_secs

def epoch_conversion():
  today = time.time()
  print (str(int(today)))
  #epoch = int(time.mktime(time.gmtime(time.time())))
  #print (epoch)

def main():
  utc = datetime.utcnow()
  year = utc.year
  month = utc.month
  day = utc.day
  hour = utc.hour
  min1 = utc.minute
  sec = utc.second

  if len(sys.argv) != 1:
    print ("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  #print(sys.argv[1])
  epoch_conversion()
  print(str(datetimeToEpoch(year,month,day,hour,min1,sec)))
  sys.exit(), end

main()


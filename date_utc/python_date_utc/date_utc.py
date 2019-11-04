import sys
import os
import time
import datetime
from datetime import datetime

def date_today_utc():
  utc = datetime.utcnow()
  print("utc: " + str(utc.year) + "-" + str(utc.month) + "-" + str(utc.day) + " " + str(utc.hour) + ":" + str(utc.minute) + ":" + str(utc.second))

def date_today():
  local = datetime.now()
  print("local: " + str(local.year) + "-" + str(local.month) + "-" + str(local.day) + " " + str(local.hour) + ":" + str(local.minute) + ":" + str(local.second))
  #print(local.strftime("%Y-%m-%d"))
  #print(local.strftime("%Y-%m-%d"))

def driver():
  time.time()
  #1226392970.4683549
  #time.gmtime(time.time()).tm_mday
  #time.gmtime(time.time()).tm_mon
  #time.gmtime(time.time()).tm_year
  x = time.gmtime(time.time())
  print(time.gmtime(time.time()).tm_mon )
  print(time.gmtime(time.time()).tm_mday)
  print(time.gmtime(time.time()).tm_year)
  print(time.gmtime(time.time()).tm_hour)
  print(time.gmtime(time.time()).tm_min )
  print(time.gmtime(time.time()).tm_sec )
  print(datetime.datetime.now())
  print("now: " ,datetime.datetime.now().strftime("%y-%m-%d %H:%M"))
#  print datetime.now().strftime("%Y-%m-%d %H:%M")

def main():
  if len(sys.argv) != 1:
    print("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  #print(sys.argv[1])
  #driver()
  date_today_utc()
  date_today()
  sys.exit(), end

main()

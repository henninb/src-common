#comment
import sys
import time
from datetime import timedelta
from datetime import date
from datetime import datetime

def driver():
  year = timedelta(days=365)
  another_year = timedelta(weeks=40, days=84, hours=23, minutes=50, seconds=600)  # adds up to 365 days
  ten_years = 10 * year
  today = date.today()
  my_birthday = date(today.year, today.month, today.day)
  print (my_birthday.strftime("%d/%m/%y"))

def date_today_utc():
  utc = datetime.utcnow()
  year = utc.year
  month = utc.month
  day = utc.day
  hour = utc.hour
  min1 = utc.minute
  sec = utc.second
  print("utc=<" + str(utc.year) + "-" + str(utc.month) + "-" + str(utc.day) + " " + str(utc.hour) + ":" + str(utc.minute) + ":" + str(utc.second) + ">")

def date_today():
  local = datetime.now()
  year = local.year
  month = local.month
  day = local.day
  hour = local.hour
  min1 = local.minute
  sec = local.second
  print("local=<" + str(local.year) + "-" + str(local.month) + "-" + str(local.day) + " " + str(local.hour) + ":" + str(local.minute) + ":" + str(local.second) + ">")
  #print(local.strftime("%Y-%m-%d"))
  #print(local.strftime("%Y-%m-%d"))

def main():
  if len(sys.argv) != 1:
    print ("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  #print(sys.argv[1])
  date_today()
  date_today_utc()
  #driver()
  #local = datetime.now()
  #print(str(local.year) + "-" + str(local.month) + "-" + str(local.day) + " " + str(local.hour) + ":" + str(local.minute) + ":" + str(local.second))

  #print(utc)
  datetime_object = datetime.strptime('Jun 1 2017  1:33PM', '%b %d %Y %I:%M%p')
  #x = time.struct_time(tm_year=2005, tm_mon=6, tm_mday=1,  tm_hour=13, tm_min=33, tm_sec=0, tm_wday=2, tm_yday=152, tm_isdst=-1)
  sys.exit(), end

main()

import sys
import os
import time
#from datetime import date
import datetime

def date_dow():
  dayofWeek = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
  x = datetime.datetime.today().weekday()
  return dayofWeek[x]
  #time.time()
  #oldDate = date(2010, 02, 06)  # year, month, day
  #dayofWeek = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
  #print ("The day of the week on %s was a %s" % (oldDate.strftime("%d %b %Y"), dayofWeek[date.weekday(oldDate)]))
  #1226392970.4683549
  #time.gmtime(time.time()).tm_mday
  #time.gmtime(time.time()).tm_mon
  #time.gmtime(time.time()).tm_year
  #x = time.gmtime(time.time())

def main():
  if len(sys.argv) != 1:
    print( "Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  print(date_dow())
  sys.exit(), end

main()




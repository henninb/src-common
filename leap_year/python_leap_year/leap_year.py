import sys

def isLeapYear( year ):
  if( year > 1581 ):
    return(((year % 4 == 0) and (year % 100 > 0)) or (year % 400 == 0))
  else:
    return false

#int isLeapYr( int year ) {
#  return((year % 400 == 0) || ((year % 100 > 0) && (year % 4 == 0)))
#}

def main():
  if len(sys.argv) != 1:
    print("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  #print(sys.argv[1])
  for idx_i in range(1999, 2100):
    print ("isLeapYear(%d)=<%s>" % (idx_i, str(isLeapYear(idx_i))))
  sys.exit(), end

main()

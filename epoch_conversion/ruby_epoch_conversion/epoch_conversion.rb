#!/usr/bin/ruby -w
#comments
require 'date'

def computeDateDoy( year, month, mday )
  n1 = ((275 * month) / 9).to_i
  n2 = ((month + 9) / 12).to_i
  n3 = (1 + ((year - 4 * (year / 4).to_i + 2) / 3).to_i)
  n = n1 - (n2 * n3) + mday - 30
  return n
end

def datetimeToEpoch ( years, months, mday, hours, mins, secs )
  epoch_start = 1970
  total_days = 0
  total_secs = 0

  while ( epoch_start < years )
    total_days = total_days + computeDateDoy(epoch_start, 12, 31)
    epoch_start = epoch_start + 1
  end
  total_days = total_days + computeDateDoy(years, months, mday - 1)
  total_secs = (total_days * 86400) + (hours * 60 * 60) + (mins * 60) + secs
  return total_secs
end

def main()
  utc = Time.now.utc
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  time = Time.now.to_i
  year = utc.year
  month = utc.month
  day = utc.day
  hour = utc.hour
  min = utc.min
  sec = utc.sec
  puts datetimeToEpoch(year,month,day,hour,min,sec)
  puts time
end

main()

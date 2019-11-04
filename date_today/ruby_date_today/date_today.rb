#!/usr/bin/ruby -w
#comments
require 'date'

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  #puts ARGV[0]
  #puts "got here"
  #puts "Month: #{Date.today.month}"
  #puts "Year: #{Date.today.year}"
  #puts "Day: #{Date.today.day}"
  #puts "Hour: #{Date.today.hour}"

  local = Time.new
  utc = Time.now.utc

  year = local.year
  month = local.month
  day = local.day
  hour = local.hour
  min = local.min
  sec = local.sec

  # Components of a Time
  #puts "Current Time : " + local.inspect
  puts "local=<#{local.year}-#{local.month}-#{local.day} #{local.hour}:#{local.min}:#{local.sec}>"
  #puts local.year    # => Year of the date
  #puts local.month   # => Month of the date (1 to 12)
  #puts local.day     # => Day of the date (1 to 31 )
  #puts local.wday    # => 0: Day of week: 0 is Sunday
  #puts local.yday    # => 365: Day of year
  #puts local.hour    # => 23: 24-hour clock
  #puts local.min     # => 59
  #puts local.sec     # => 59
  #puts local.usec    # => 999999: microseconds
  #puts local.zone    # => "UTC": timezone name

  year = utc.year
  month = utc.month
  day = utc.day
  hour = utc.hour
  min = utc.min
  sec = utc.sec

  puts "utc=<#{utc.year}-#{utc.month}-#{utc.day} #{utc.hour}:#{utc.min}:#{utc.sec}>"
  #puts( utc)

  #values = local.to_a
  #puts Time.utc(*values)

  Time.gm(2008, 7, 8, 9, 10, 11)
  Time.local(2008, 7, 8, 9, 10)
  Time.utc(2008, 7, 8, 9, 10)
end

main()

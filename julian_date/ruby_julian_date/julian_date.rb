#!/usr/bin/ruby -w
require 'date'
#comments

def julian_date( y, m, d )
    y += 8000
    if m < 3 then
      y = y - 1
      m = m + 12
    end

    return ((y * 365) + (y / 4) - (y / 100) + (y / 400) - 1200820 + (m * 153 + 3) / 5 - 92 + d - 1) - 0.5
end

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  puts julian_date(Date.today.year, Date.today.month, Date.today.day)
end

main()

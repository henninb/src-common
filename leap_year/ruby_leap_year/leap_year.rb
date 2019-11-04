#!/usr/bin/ruby -w
#comments

def isLeapYear( year )
  if( year > 1581 ) then
    return(((year % 4 == 0) and (year % 100 > 0)) or (year % 400 == 0))
  else
    return false
  end
end

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  #puts ARGV[0]
  for idx_i in (1999...2101)
    puts "isLeapYear(#{idx_i})=<#{isLeapYear(idx_i)}>"
  end
end

main()


#!/usr/bin/ruby -w
#comments

def easterCalculator_old( year )
  g = 0
  s = 0
  l = 0
  pp = 0
  p = 0
  d = 0
  x = 0
  month = 0
  day = 0

  g = (year % 19) + 1
  s = ((year - 1600) / 100) - ((year - 1600) / 400)
  l = (((year - 1400) / 100) * 8) / 25
  pp = (30003 - 11 * g + s - l) % 30
  if( pp == 28 ) then
    if( g > 11 ) then
      p = 27
    end
  elsif( pp == 29 ) then
    p = 28
  else
    p = pp
  end

  d = (year + (year / 4) - (year / 100) + (year / 400)) % 7
  x = ((70004 - d - p) % 7) + 1

  if((p + x) < 11 ) then
    month = 3
    day = ((p + x) + 21)
  else
    month = 4
    day = ((p + x) - 10)
  end

  puts "Easter Sunday " + year.to_s + "-" + month.to_s + "-" + day.to_s
end


def easterCalculator(year)
  day = 0
  month = 0
  g = 0
  c = 0
  h = 0
  i = 0

  g = year % 19
  c = year / 100
  h = (c - (c / 4) - ((8 * c + 13) / 25) + 19 * g + 15) % 30
  i = h - (h / 28) * (1 - (h / 28) * (29 / (h + 1)) * ((21 - g) / 11))

  day   = i - ((year + (year / 4) + i + 2 - c + (c / 4)) % 7) + 28
  month = 3

  if (day > 31) then
      month = month + 1
      day = day - 31
  end
  puts "easterCalculator(" + year.to_s + ")=<" + year.to_s + "-" + month.to_s + "-" + day.to_s + ">"
end

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  for idx_i in 2017..2100 do
    easterCalculator(idx_i)
  end

end

main()

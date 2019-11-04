#!/usr/bin/ruby -w
#comments

def rec_add(x, y)
  if y == 0 then
    return x
  else
    return (1 + rec_add(x, y - 1))
  end
end

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  puts "rec_add(6,8)= #{rec_add(6,8)}"
end

main()

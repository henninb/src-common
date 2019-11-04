#!/usr/bin/ruby -w
#comments

def example_function(n)
  x = 0

  x = (n + n - n) * (n / 1)
  x = x * (1.25).floor

  if( x < 0 ) then
    x = x.abs
  end
  return x
end

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  for idx_i in (1...10)
    puts "example_function(#{idx_i})=<#{example_function(idx_i)}>"
  end
end

main()

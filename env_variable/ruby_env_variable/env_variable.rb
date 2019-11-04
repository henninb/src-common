#!/usr/bin/ruby -w
#comments

def env_variable_function(n)
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
  puts ENV['OS']
end

main()

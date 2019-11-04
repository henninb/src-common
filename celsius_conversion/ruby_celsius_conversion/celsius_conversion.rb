#!/usr/bin/ruby -w
#comments

def toFahrenheit ( x )
  return  x * (9.0/5.0) + 32.0
end

def toCelsius ( x )
  return (x - 32.0) * (5.0/9.0)
end

def example_function(n)
  return n
end

def main()
  if ARGV.length != 0
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  #for idx_i in (1...10)
  puts "toFahrenheit(#{21})=<#{toFahrenheit(21)}>"
  puts "toCelsius(#{70})=<#{toCelsius(70)}>"
  #end
end

main()

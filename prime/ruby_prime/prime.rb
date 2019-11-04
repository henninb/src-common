#!/usr/bin/ruby -w
#comments

def isPrime( number )
  for idx_i in 2..(number - 1) do
    if (number % idx_i == 0) and (idx_i != number) then
      return 0
    end
    return 1
  end
end

def main()
  if ARGV.length != 0
    puts "Usage: #{$0} <noargs>" then
    exit(1)
  end
  #puts ARGV[0]
  puts "got here"
  for idx_i in 1..100 do
    puts "prime (#{idx_i})=#{isPrime(idx_i)}"
  end
end

main()


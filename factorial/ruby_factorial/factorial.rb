def factorial(n)
  if n == 0 then
    1
  elsif n == 1 then
    1
  else
    n * factorial(n - 1)
  end
end

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  for idx_i in (1...14)
    puts "factorial(#{idx_i})=<#{factorial(idx_i)}>"
  end
end

main()

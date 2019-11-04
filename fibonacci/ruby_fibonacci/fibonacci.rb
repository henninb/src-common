def fibonacci(n)
  if n == 0 then
    0
  elsif n == 1 then
    1
  else
    fibonacci(n-2) + fibonacci(n-1)
  end
end

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  for idx_i in (1...25)
    puts "fibonacci(#{idx_i})=<#{fibonacci(idx_i)}>"
  end
end

main()

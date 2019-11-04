
def gcd(a, b)
  if b == 0 then
    return a
  else
    return gcd(b, (a % b))
  end
end

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  puts "got here"
  puts gcd(6,4)
end

main()

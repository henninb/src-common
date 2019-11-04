
#!/usr/bin/ruby -w
#comments

def example_function(n)

begin
  1/0
rescue Exception
  print "\nException\n"
  # -
#rescue AnotherTypeOfException
  # -
else
  # Other exceptions
end



  return n
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


# try:
#   1/0
# except ZeroDivisionError:
#   print("WARN: dividing by zero is silly")
# finally:
#   print("finally")
#   return n
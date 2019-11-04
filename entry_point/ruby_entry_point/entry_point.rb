#!/usr/bin/ruby -w
#comments

def main()
  if ARGV.length != 1 then
    puts "Usage: #{$0} <arg1>"
    exit(1)
  end
  puts "got here"
end

main()

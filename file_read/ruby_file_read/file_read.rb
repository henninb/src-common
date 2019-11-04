#!/usr/local/bin/ruby -w
#comments

def fileRead( ifname )
  File.open(ifname).each {
    |line|
    #puts line if line =~ /blue/
    puts line
  }
end

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  fileRead("input.txt")
  #puts ARGV[0]
end

main()

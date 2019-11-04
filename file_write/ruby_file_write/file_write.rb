#!/usr/local/bin/ruby -w
#comments


def fileWrite( ifname, data )
  File.open(ifname, 'w') {
    |f|
    f.write(data)
  }
end

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  #puts ARGV[0]
  fileWrite("output", "content")
end

main()

#!/usr/bin/ruby -w
#comments

def rec_for_loop(n)
  if n == 0 then
    return 0
  else
    rec_for_loop(n-1)
    print "#{n}\n"
  end
end

def rec_for_loop_reverse(n)
  if n == 0 then
    return
  else
    print "#{n}\n"
    rec_for_loop_reverse(n-1)
  end
end

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  rec_for_loop(10)
  rec_for_loop_reverse(10)
end

main()


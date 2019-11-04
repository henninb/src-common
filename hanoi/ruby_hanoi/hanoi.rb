#!/usr/local/bin/ruby -w
#comments

def move(num_disks, start=0, target=1, using=2)
  if num_disks == 1
   @towers[target] << @towers[start].pop
    puts "Move disk from #{start} to #{target} : #{@towers}"
  else
    move(num_disks-1, start, using, target)
    move(1,           start, target, using)
    move(num_disks-1, using, target, start)
  end
end


def hanoi(x=3, from="A", to="B", aux="C" )
  if( x == 1 )
    puts("Move Disk From #{from} to #{to}\n")
  else
    hanoi(x - 1, from, aux, to)
    puts("Move Disk From #{from} to #{to}\n")
    hanoi(x - 1, aux, to, from)
  end
end

#n = 5
#@towers = [[*1..n].reverse, [], []]
#move(n)

def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noargs>"
    exit(1)
  end
  hanoi()
end

main()

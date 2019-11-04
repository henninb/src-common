def main()
  if ARGV.length != 0 then
    puts "Usage: #{$0} <noarg>"
    exit(1)
  end
  puts ARGV[0]

  list = 6, 3, 10, 1, 8, 9, 7, 4, 2, 5
  puts bubble_sort(list)
end

def bubble_sort(list)

  slist = list.clone

  for i in 0..(slist.length - 1)
    for j in 0..(slist.length - i - 2)
        if ( slist[j + 1] <=> slist[j] ) == -1
            slist[j], slist[j + 1] = slist[j + 1], slist[j]
        end
    end
  end

  return slist
end

main()

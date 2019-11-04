#comment

defmodule CollectionModel do
  def collection_model_function(n) do
    n
  end
  def iterate(n) when n < 1 do
    #IO.puts "collection_model_function(" <> to_string(n) <> ")"
  end

  def iterate(n) do
    iterate(n - 1)
    IO.puts "collection_model_function(" <> to_string(n) <> ")=<" <> to_string(collection_model_function(n)) <> ">"
  end

  def main() do
empty_list = []
list = [1,2,3,4,5]
IO.puts length(list)            # 5
[0 | list]                      #=> [0,1,2,3,4,5]
hd(list)                        #=> 1
IO.puts hd(list)                # 1
tl(list)                        #=> [2,3,4,5]
Enum.at(list,3)                 #=> 4
IO.puts Enum.at(list,3)
list ++ [6,7]                   #=> [1,2,3,4,5,6,7]
list -- [4,2]                   #=> [1,3,5]



empty_tuple = {}                #=> {}
tuple = {0,1,2,3,4}             #=> {0, 1, 2, 3, 4}
tuple_size(tuple)               #=> 5
elem(tuple, 2)                  #=> 2
#put_elem(tuple,3,:atom)         #=> {0, 1, 2, :atom, 4}

#empty_set = MapSet.new                  #=> #MapSet<[]>
set1 = MapSet.new(1..4)                 #=> #MapSet<[1, 2, 3, 4]>
MapSet.size(set1)                       #=> 4
MapSet.member?(set1,3)                  #=> true
MapSet.put(set1,9)                      #=> #MapSet<[1, 2, 3, 4, 9]>
set2 = MapSet.new([6,4,2,0])            #=> #MapSet<[0, 2, 4, 6]>
MapSet.union(set1,set2)                 #=> #MapSet<[0, 1, 2, 3, 4, 6]>
MapSet.intersection(set1,set2)          #=> #MapSet<[2, 4]>
MapSet.difference(set1,set2)            #=> #MapSet<[1, 3]>
MapSet.subset?(set1,set2)               #=> false

  end
end

#CollectionModel.main()

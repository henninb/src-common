#comment

defmodule SelectionSort do
  def selection_sort(list) when is_list(list), do: selection_sort(list, [])

  defp selection_sort([], sorted), do: sorted
  defp selection_sort(list, sorted) do
    max = Enum.max(list)
    selection_sort(List.delete(list, max), [max | sorted])
  end

  def iterate(n) when n < 1 do
    #IO.puts "selection_sort_function(" <> to_string(n) <> ")"
  end

  def main() do
    #iterate(10)
    SelectionSort.selection_sort([5,3,9,4,1,6,8,2,7])
  end
end

SelectionSort.main()

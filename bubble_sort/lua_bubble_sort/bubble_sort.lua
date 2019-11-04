function bubbleSort(A)
  local itemCount=#A
  local hasChanged
  repeat
    hasChanged = false
    itemCount=itemCount - 1
    for i = 1, itemCount do
      if A[i] > A[i + 1] then
        A[i], A[i + 1] = A[i + 1], A[i]
        hasChanged = true
      end
    end
  until hasChanged == false
end

list = { 5, 6, 1, 2, 9, 14, 2, 15, 6, 7, 8, 97 }
bubbleSort(list)
for i, j in pairs(list) do
    print(j)
end

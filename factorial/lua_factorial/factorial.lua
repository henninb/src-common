function factorial(n)
  if ( n == 0 ) then
    return 0
  elseif( n == 1 ) then
    return 1
  else
    return n * factorial(n - 1)
  end
end

function main()
  for idx_i=1,14,1
  do
    print("factorial(" .. idx_i .. ")=" .. tostring(factorial(idx_i)))
  end
end

main()

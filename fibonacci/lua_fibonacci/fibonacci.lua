--comment
function fibonacci(n)
  if ( n == 0 ) then
    return 0
  elseif( n == 1 ) then
    return 1
  else
    return fibonacci(n - 1) + fibonacci(n - 2)
  end
end

function main()
  for idx_i=1,24,1
  do
    print("fibonacci(" .. idx_i .. ")=" .. tostring(fibonacci(idx_i)))
  end
end

main()


-- comments
function example_function (n)
  return n;
end

function main()
  for idx_i=1,10,1
  do
    print("example_function(" .. idx_i .. ")=<" .. tostring(example_function(idx_i)) .. ">")
  end
end

main()

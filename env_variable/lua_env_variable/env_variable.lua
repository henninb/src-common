-- comments
function env_variable_function (n)
  return n;
end

function main()
  for idx_i=1,10,1
  do
    print(os.getenv("OS"))
    print("env_variable_function(" .. idx_i .. ")=<" .. tostring(env_variable_function(idx_i)) .. ">")
  end
end

main()

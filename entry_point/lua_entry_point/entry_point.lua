-- comments
function entry_point_function (n)
  return n;
end


function main(_arg)
  _arg = _arg or arg

  if #_arg ~= 1 then
    io.stderr:write("Usage: " .. arg[0] .." <arg1>\n")
    os.exit(1)
  end
end

--function main()
--  for idx_i=1,10,1
--  do
--    print("entry_point_function(" .. idx_i .. ")=<" .. tostring(entry_point_function(idx_i)) .. ">")
--  end
--  os.exit(1)
--end

main()

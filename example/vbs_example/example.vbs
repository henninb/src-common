'comment
option explicit

function example_function(n)
  example_function = n
end function

sub main()
  dim args
  dim idx_i

  set args = wscript.arguments
  if args.count <> 0 then
    wscript.echo "Usage: cscript " & wscript.scriptname & " <noargs>"
    wscript.quit(1)
  end if

  'wscript.echo args.Item(0)
  for idx_i = 1 to 9
    wscript.echo "example_function(" & idx_i & ")=<" & example_function(idx_i) & ">"
  next
  set args = nothing
  wscript.quit(0)
end sub

call main()

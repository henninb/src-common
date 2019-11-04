option explicit

function factorial(n)
  if n = 0 then
    factorial = 0
   elseif n = 1 then
    factorial = 1
  else
    factorial = (n * factorial(n - 1))
  end if
end function

sub main
  dim args
  dim idx_i

  set args = wscript.arguments
  if args.count <> 0 then
    wscript.echo "Usage: cscript " & wscript.scriptname & " <noargs>"
    wscript.quit(1)
  end if
  for idx_i = 1 to 14
    wscript.echo "factorial(" & idx_i & ")=<" & factorial(idx_i) & ">"
  next
end sub

call main()

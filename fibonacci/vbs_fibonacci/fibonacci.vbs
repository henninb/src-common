'comment
option explicit

function fibonacci(n)
  if n = 0 then
    fibonacci = 0
   elseif n = 1 then
    fibonacci = 1
  else
    fibonacci = (fibonacci( n - 1 ) + fibonacci( n - 2 ))
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
  for idx_i = 1 to 24
    wscript.echo "fibonacci(" & idx_i & ")=<" & fibonacci(idx_i) & ">"
  next
end sub

call main()
'comment
option explicit

function r_gcd(a, b)
  if b = 0 then
    r_gcd = a
  else
    r_gcd = r_gcd(b, (a mod b))
  end if
end function

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

  wscript.echo r_gcd(45, 5)
  wscript.echo r_gcd(45, 7)
  wscript.echo r_gcd(24, 4)
  wscript.echo r_gcd(24, 45)
  wscript.echo r_gcd(5, 45)
  for idx_i = 1 to 9
    wscript.echo "example_function(" & idx_i & ")=<" & example_function(idx_i) & ">"
  next
  set args = nothing
  wscript.quit(0)
end sub

call main()

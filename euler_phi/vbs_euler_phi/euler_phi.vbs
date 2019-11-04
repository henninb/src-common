'comment
option explicit

function example_function(n)
  example_function = n
end function

function is_coprime(a, b)
  if r_gcd(a,b) = 1 then
    is_coprime = True
  else
    is_coprime = False
  end if
end function

function r_gcd(a, b)
  if b = 0 then
    r_gcd = a
  else
    r_gcd = r_gcd(b, (a mod b))
  end if
end function

function euler_phi_new( n )
  euler_phi_new = rec_for_loop(n, n)
end function

function rec_for_loop( n, x )
  if ( n = 0 ) then
    rec_for_loop = 0
  else
    if ( is_coprime(x, n) = True ) then
      rec_for_loop = 1 + rec_for_loop(n - 1, x)
    else
      rec_for_loop = 0 + rec_for_loop(n - 1, x)
    end if
  end if
end function

sub main()
  dim args
  dim idx_i

  set args = wscript.arguments
  if args.count <> 0 then
    wscript.echo "Usage: cscript " & wscript.scriptname & " <noargs>"
    wscript.quit(1)
  end if

  for idx_i = 1 to 24
    wscript.echo "euler_phi_new(" & idx_i & ")=<" & euler_phi_new(idx_i) & ">"
  next
  set args = nothing
  wscript.quit(0)
end sub

call main()

'comment
option explicit

function toCelsius(x)
  toCelsius = (5/9) * (x-32)
end function

function toFahrenheit(x)
  toFahrenheit = x * (9.0/5.0) + 32.0
end function

sub main()
  dim args
  dim idx_i

  set args = wscript.arguments
  if args.count <> 0 then
    wscript.echo "Usage: cscript " & wscript.scriptname & " <noargs>"
    wscript.quit(1)
  end if

  wscript.echo "toCelsius(" & 70 & ")=<" & toCelsius(70) & ">"
  wscript.echo "toFahrenheit(" & 21 & ")=<" & toFahrenheit(21) & ">"

  set args = nothing
  wscript.quit(0)
end sub

call main()

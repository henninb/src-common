'comment
option explicit

function date_today_function(n)
  date_today_function = n
end function

sub main()
  dim args

  set args = wscript.arguments
  if args.count <> 0 then
    wscript.echo "Usage: cscript " & wscript.scriptname & " <noargs>"
    wscript.quit(1)
  end if

  wscript.echo "date_today_function(" & 1 & ")=<" & date_today_function(1) & ">"
  set args = nothing
  wscript.quit(0)
end sub

call main()

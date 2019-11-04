option explicit

sub main()
  dim args

  set args = wscript.arguments
  if args.count <> 0 then
    wscript.echo "Usage: cscript " & wscript.scriptname & " <noargs>"
    wscript.quit(1)
  end if

  'wscript.echo args.Item(0)
  wscript.echo "hello world"
  set args = nothing
  wscript.quit(0)
end sub

call main()

option explicit

sub main()
    dim args

    set args = wscript.arguments
    if args.count <> 0 then
        wscript.echo "Usage: cscript " & wscript.scriptname & " <no_args>"
        wscript.quit(1)
    end if
    wscript.echo "Pre-sleep"
    set args = nothing
    'Sleep 5 secs
    wscript.sleep 5000
    wscript.echo "Post-sleep"
    wscript.quit(0)
end sub

call main()

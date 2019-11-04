option explicit

sub main()
    dim args
    dim fso
    dim ifp
    dim file_all

    set args = wscript.arguments
    if args.count <> 1 then
        wscript.echo "Usage: cscript " & wscript.scriptname & " <fname>"
        wscript.quit(1)
    end if

    set fso = CreateObject("Scripting.FileSystemObject")
    set ifp = fso.OpenTextFile(args.Item(0), 1, false)

    do while ifp.AtEndOfStream <> true
        'file_all = file_all & ifp.ReadLine & vbCrLf
        file_all = ifp.readall
        'wscript.echo file_all
    loop
    ifp.close

    wscript.echo file_all

    'wscript.echo args.Item(0)
    set args = nothing
    wscript.quit(0)
end sub

call main()

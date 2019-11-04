//#light
open System

//comments
(* commments *)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 2 then
    eprintfn "Usage: %s <arg1>" argv.[0]
    -1
  else
    printfn "code here"
    0

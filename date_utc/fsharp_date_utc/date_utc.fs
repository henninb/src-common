#light

open System

//comments
(* commments *)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()
  let utc = System.DateTime.UtcNow

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "Current UTC: %A" (utc)
    0
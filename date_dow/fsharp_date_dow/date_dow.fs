#light

open System

//comments
(* commments *)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()
  let now = System.DateTime.Now

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "The day of the week is %A" (now.DayOfWeek)
    0

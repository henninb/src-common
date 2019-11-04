#light

open System
open System.Threading

//comments
(* commments *)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "action"
    Thread.Sleep(3000)
    //Async.Sleep(3000)|> ignore
    printfn "action"
    0
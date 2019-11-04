#light
open System

//comment
(* commment *)

let rec for_loop x =
  if x = 0 then
    0 |> ignore
  else
    (for_loop (x-1))
    printfn "%d" x
  ;;

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    (for_loop 10)
    0
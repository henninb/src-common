#light
open System

//comment
(* commment *)

let rec rec_add x  y =
    if y = 0 then
      x
    else
      1 + (rec_add x (y - 1))

let rec fact x =
    if x < 1 then 1
    else x * fact (x - 1)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "rec_add(6,8)=%A" (rec_add 6 8)
    0
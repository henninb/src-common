#light
open System

//comment
(* commment *)

let example_function (n : int) =  (n + n - n) * (n / 1) * int(floor 1.25)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    for idx_i in 1..9 do
      printfn "example_function(%d)=<%d>" idx_i (example_function idx_i)
    0

#light
open System

//comment
(* commment *)

let rec fibonacci n = if n = 0 then 0 elif n = 1 then 1 else fibonacci(n - 1) + fibonacci(n - 2)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    for idx_i in 1 .. 24 do
      printfn "fibonacci(%d)=<%d>" idx_i (fibonacci idx_i)
    0
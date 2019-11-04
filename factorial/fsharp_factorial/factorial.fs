//#light

open System

let rec factorialMatch n =
  match n with
  | 0 -> 0
  | 1 -> 1
  | _ -> n * factorialMatch( n - 1 )

let rec factorial x =
  if x < 1 then 1
  else x * factorial (x - 1)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    for idx_i in 1 .. 12 do
      printfn "factorial(%d)=<%d>" idx_i (factorial idx_i)
    0

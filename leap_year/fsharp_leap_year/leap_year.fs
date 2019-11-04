#light
open System

//comment
(* commment *)

let (|DivisibleBy|_|) by x = if x % by = 0 then Some DivisibleBy else None

let isLeapYear (year) =
    match year with
    | DivisibleBy 400 -> true
    | DivisibleBy 100 -> false
    | DivisibleBy 4   -> true
    | _               -> false


[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    for idx_i in 1999 .. 2101 do
      printfn "isLeapYear(%A)=<%A>" idx_i (isLeapYear idx_i)
    0
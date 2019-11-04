#light
open System

//comment
(* commment *)

let rec gcd x y =
    if y = 0 then x
    else gcd y (x % y)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "(gcd 111 259)=%A" (gcd 111 259)
    printfn "(gcd 12 25)=%A" (gcd 12 25)
    printfn "(gcd 6 4)=%A" (gcd 6 4)
    printfn "(gcd 45 5)=%A" (gcd 45 5)
    0
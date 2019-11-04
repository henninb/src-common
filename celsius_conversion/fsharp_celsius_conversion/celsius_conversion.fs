#light

open System
open System.Threading

//comments
(* commments *)

[<Measure>] type C
[<Measure>] type F

let to_fahrenheit (x : float<C>) = x * (9.0<F>/5.0<C>) + 32.0<F>
let to_celsius (x : float<F>) = (x - 32.0<F>) * (5.0<C>/9.0<F>)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "to_fahrenheit(21.0)=<%A>" (to_fahrenheit 21.0<C>)
    printfn "to_celsius(70.0)=<%A>" (to_celsius 70.0<F>)
    0

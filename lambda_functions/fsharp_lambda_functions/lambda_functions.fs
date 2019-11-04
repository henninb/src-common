#light
open System

//comment
(* commment *)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()
  let values = [1; 2; 3; 4; 5];
  // use List.map with a lambda expression the lambda squares each element.
  let result = List.map (fun x -> x * x) values

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "%A" result

    0
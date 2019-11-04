#light
open System

//comment
(* commment *)

let exception_handler_function x y =
   try
      //Some (x / y)
      x / y;
   with
      | :? System.DivideByZeroException -> printfn "Silly, you cannot division by zero!";0


[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "exception_handler_function=<%d>" (exception_handler_function 10 0)
    0

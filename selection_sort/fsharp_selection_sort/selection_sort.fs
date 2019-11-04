#light
open System

//comment
(* commment *)

let rec ssort = function
    [] -> []
    | x::xs ->
        let min, rest =
            List.fold (fun (min,acc) x ->
                             if h<min then (h, min::acc)
                             else (min, h::acc))
              (x, []) xs
        in min::ssort rest

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "fix selection sort"
    0
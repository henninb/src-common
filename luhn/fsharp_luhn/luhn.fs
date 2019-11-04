#light
open System

//comment
(* commment *)

let luhn (s:string) =
  let rec g r c = function
  | 0 -> r
  | i ->
      let d = ((int s.[i - 1]) - 48) <<< c
      g (r + if d < 10 then d else d - 9) (1 - c) (i - 1)
  (g 0 0 s.Length) % 10 = 0

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "379126015215813=<%A>" (luhn "379126015215813")
    printfn "4987002233114458=<%A>" (luhn "4987002233114458")
    printfn "6011000000000013=<%A>" (luhn "6011000000000013")
    printfn "6011000000000012=<%A>" (luhn "6011000000000012")
    0
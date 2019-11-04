#light
open System

//comment
(* commment *)

let rec hanoi fromPole destPole tempPole disks =
    if disks > 0 then
        hanoi fromPole tempPole destPole (disks - 1)
        printf "Moving from %c to %c\n" fromPole destPole
        hanoi tempPole destPole fromPole (disks - 1)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    hanoi '1' '2' '3' 4
    0
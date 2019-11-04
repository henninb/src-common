#light
open System

//comment
(* commment *)

let rec gcd x y = if y = 0 then x else gcd y (x % y);;
let is_coprime a b = (gcd a b) = 1;;

let rec for_loop n x =
  if n = 0 then
    0
  else
    if (is_coprime n x) = true then
      1 + (for_loop (n - 1) x)
    else
      0 + (for_loop (n - 1) x);;

let euler_phi_new n = (for_loop n n);;

let euler_phi n =
  let mutable remainder = n
  let mutable phi = n
  let mutable odd = 0

  if n <> 0 then
    if( (remainder % 2) = 0 ) then
      phi <- phi / 2
      while( (remainder % 2) = 0 ) do
          remainder <- remainder / 2
    else
       0 |> ignore
    odd <- 3
    while (odd <= remainder ) do
      if (remainder % odd = 0 ) then
        phi <- phi * (odd - 1) / odd
        while( (remainder % odd) = 0 ) do
          remainder <- remainder / odd
      else
        0 |> ignore
      odd <- odd + 2
    phi
  else
    0

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    for i in 1 .. 24 do
      printf "euler_phi(%d)=<%d>\n" i (euler_phi i)
      printf "euler_phi_new(%d)=<%d>\n" i (euler_phi_new i)
    0
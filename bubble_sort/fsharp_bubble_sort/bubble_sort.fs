open System

// in-place swap
let swap i j (arr : 'a []) =
    let tmp = arr.[i]
    arr.[i] <- arr.[j]
    arr.[j] <- tmp

// http://en.wikipedia.org/wiki/Bubble_sort
let bubble_sort arr =
    let rec loop (arr : 'a []) =
        let mutable swaps = 0
        for i = 0 to arr.Length - 2 do
            if arr.[i] > arr.[i+1] then
                swap i (i+1) arr
                swaps <- swaps + 1
        if swaps > 0 then loop arr else arr
    loop arr

//comments

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()
  let input = [|10; 2; 4; 1; 6; 5; 8; 7; 3; 9|]

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printf "%A\n" input
    printf "%A\n" (bubble_sort input)
    0
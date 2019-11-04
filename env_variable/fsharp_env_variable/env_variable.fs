#light
open System

//comment
(* commment *)

let env_variable_function (n : int) =  (n + n - n) * (n / 1) * int(floor 1.25)

let envVars =
  System.Environment.GetEnvironmentVariables()
  |> Seq.cast<System.Collections.DictionaryEntry>
  |> Seq.map (fun d -> d.Key :?> string, d.Value :?> string)
  |> dict

// environment example
let GetEnvVar var =
    match System.Environment.GetEnvironmentVariable(var) with
    | null -> None
    | value -> Some value

// try it
//GetEnvVar "PATH"
//GetEnvVar "TEST"

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  //printfn "%A" argv.Length
  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "%A" (GetEnvVar "OS")
    0

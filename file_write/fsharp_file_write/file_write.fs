#light
open System
open System.IO

//comment
(* commment *)

(*

let file_write fileName =
    use streamWriter = new StreamWriter("output.txt", false)
    streamWriter.WriteLine("<startTag>")
    seqLen |> xmlSeq |> Seq.iter streamWriter.WriteLine
    streamWriter.WriteLine("</startTag>")

let wr = new System.IO.StreamWriter("output.csv")
table |> List.map(string) |> String.concat("") |> wr.Write
wr.Close()
*)

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    File.WriteAllText("output.txt", "Hello World")
    printfn "wrote output.txt"
    0
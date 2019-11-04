#light

open System

//comments

let date_utc =
  let utc = System.DateTime.UtcNow
  let year = utc.Year
  let month = utc.Month
  let day = utc.Day
  let hour = utc.Hour
  let min1 = utc.Minute
  let sec = utc.Second
  printfn "local=%A" (utc)
  sprintf "utc=<%A-%A-%A %A:%A:%A>" year month day hour min1 sec

let date_today =
  let local = System.DateTime.Now
  let year = local.Year
  let month = local.Month
  let day = local.Day
  let hour = local.Hour
  let min1 = local.Minute
  let sec = local.Second
  printfn "local=%A" (local)
  sprintf "local=<%A-%A-%A %A:%A:%A>" year month day hour min1 sec

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "%s" date_utc
    printfn "%s" date_today
    0
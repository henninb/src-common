#light
open System

//comment
(* commment *)

let computeDateDoy year month day =
  let n1 = 275 * month / 9
  let n2 = (month + 9) / 12
  let n3 = (1 + ((year - 4 * (year / 4) + 2) / 3))
  let n = n1 - (n2 * n3) + day - 30
  n

let datetimeToEpoch years months day hours mins secs =
  let mutable epoch_start = 1970
  let mutable total_days = 0
  let mutable total_secs = 0

  while  epoch_start < years  do
    total_days <- total_days + (computeDateDoy epoch_start 12 31)
    epoch_start <- epoch_start + 1

  total_days <- total_days + (computeDateDoy years months (day - 1))
  total_secs <- (total_days * 86400) + (hours * 60 * 60) + (mins * 60) + secs
  total_secs

[<EntryPoint>]
let main args =
  let argv = Environment.GetCommandLineArgs()
  let utc = System.DateTime.UtcNow
  let year = utc.Year
  let month = utc.Month
  let day = utc.Day
  let hour = utc.Hour
  let min1 = utc.Minute
  let sec = utc.Second

  if argv.Length <> 1 then
    eprintfn "Usage: %s <noargs>" argv.[0]
    -1
  else
    printfn "epoch_conversion=<%d>" (datetimeToEpoch year month day hour min1 sec)
    0

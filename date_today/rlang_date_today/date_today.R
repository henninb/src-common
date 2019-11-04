#comment

date_today=function() {
  local <- Sys.time()
  year <- as.numeric(format(local, "%Y"))
  month <- as.numeric(format(local, "%m"))
  day <- as.numeric(format(local, "%d"))
  hour <- as.numeric(format(local, "%H"))
  min <- as.numeric(format(local, "%M"))
  sec <- as.numeric(format(local, "%S"))
  cat(paste("local=<", year, "-", month, "-", day, " ", hour, ":", min, ":", sec, ">\n", sep = ""))
}

date_utc=function() {
  #Sys.setenv(TZ='GMT')
  local <- Sys.time()
  year <- as.numeric(format(local, "%Y", tz="UTC"))
  month <- as.numeric(format(local, "%m", tz="UTC"))
  day <- as.numeric(format(local, "%d", tz="UTC"))
  hour <- as.numeric(format(local, "%H", tz="UTC"))
  min <- as.numeric(format(local, "%M", tz="UTC"))
  sec <- as.numeric(format(local, "%S", tz="UTC"))
  cat(paste("utc=<", year, "-", month, "-", day, " ", hour, ":", min, ":", sec, ">\n", sep = ""))
}

main=function() {
  args = commandArgs(trailingOnly=TRUE)
  if (length(args) != 0) {
    stop("Usage: date_today.R <noargs>", call.=FALSE)
  }
  date_today()
  date_utc()
}

main()

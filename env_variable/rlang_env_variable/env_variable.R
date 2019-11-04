#comment

env_variable_function=function(n) {
  return(n)
}

main=function() {
  args = commandArgs(trailingOnly=TRUE)
  if (length(args) != 0) {
    #print("Usage: <noargs>")
    stop("Usage: env_variable.R <noargs>", call.=FALSE)
  }
  for (idx_i in 1:10){
    cat(paste("env_variable_function(", idx_i, ")=<", env_variable_function(idx_i), ">\n", sep = ""))
  }
  print (Sys.getenv("OS"))
}

main()

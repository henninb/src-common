#comment

example_function=function(n) {
  return(n)
}

main=function() {
  args = commandArgs(trailingOnly=TRUE)
  if (length(args) != 0) {
    #print("Usage: <noargs>")
    stop("Usage: example.R <noargs>", call.=FALSE)
  }
  for (idx_i in 1:10){
    cat(paste("example_function(", idx_i, ")=<", example_function(idx_i), ">\n", sep = ""))
  }
}

main()

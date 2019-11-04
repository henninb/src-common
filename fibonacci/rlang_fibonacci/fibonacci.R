#comment

fibonacci <- function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(fibonacci(n-1) + fibonacci(n-2))
  }
}

#sapply(seq(1,24),fibonacci)

main=function() {
  args = commandArgs(trailingOnly=TRUE)
  if (length(args) != 0) {
    #print("Usage: <noargs>")
    stop("Usage: example.R <noargs>", call.=FALSE)
  }

  for (idx_i in 1:24){
    cat(paste("fibonacci(", idx_i, ")=<", fibonacci(idx_i), ">\n", sep = ""))
  }
}

main()

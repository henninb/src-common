#comment

factorial <- function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(n * factorial(n-1))
  }
}

main=function() {
  args = commandArgs(trailingOnly=TRUE)
  if (length(args) != 0) {
    stop("Usage: example.R <noargs>", call.=FALSE)
  }

  for (idx_i in 1:21){
    cat(paste("factorial(", idx_i, ")=<", factorial(idx_i), ">\n", sep = ""))
  }
}

main()

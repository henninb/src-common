object factorial {
  def factorial(n:Int):Int = {
  if (n==0)
    return 1
  else
    return n * factorial(n-1)
  }

  def main(args: Array[String]): Unit = {
    for( idx_i <- 1 to 13) {
      println( "factorial(" + idx_i + ")=<" + factorial(idx_i) + ">")
    }
  }
}

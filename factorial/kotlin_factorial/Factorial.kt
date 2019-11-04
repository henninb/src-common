package Factorial

//comment
class Factorial {
  fun factorial(n : Int) : Int {
    if( n == 0 ) {
      return 0
    } else if( n == 1 ) {
      return 1
    } else {
      return(n * factorial( n - 1 ))
    }
  }
}

fun main(args : Array<String>) {
  if( args.size != 0 ) {
    println("Usage: java -jar Factorial.jar <noargs>")
    System.exit(1)
  }
  val fac = Factorial()
  for (idx_i in 1..12) {
    println("factorial(" + idx_i + ")=<" + fac.factorial(idx_i) + ">")
  }
}

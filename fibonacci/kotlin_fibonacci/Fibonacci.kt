package Fibonacci

//comment
class Fibonacci {
  fun fibonacci(n : Int) : Int {
    if( n == 0 ) {
      return 0
    } else if( n == 1 ) {
      return 1
    } else {
      return fibonacci(n - 1) + fibonacci(n - 2)
    }
  }
}

fun main(args : Array<String>) {
  if( args.size != 0 ) {
    println("Usage: java -jar Fibonacci.jar <noargs>")
    System.exit(1)
  }
  val fibonacci = Fibonacci()
  for (idx_i in 1..24) {
    println("fibonacci(" + idx_i + ")=<" + fibonacci.fibonacci(idx_i) + ">")
  }
}


package Example

//comment
class Example {
  fun example_function(n : Int) : Int {
    var x: Int
    val y = 1.25

    x = (n + n - n) * (n / 1)
    x = x * Math.floor(y).toInt()

    if( x < 0 ) {
      x = Math.abs(x)
    }
    return x
  }
}

fun main(args : Array<String>) {
  if( args.size != 0 ) {
    println("Usage: java -jar Example.jar <noargs>")
    System.exit(1)
  }
  val example = Example()
  for (idx_i in 1..9) {
    println("example_function(" + idx_i + ")=<" + example.example_function(idx_i) + ">")
  }
}


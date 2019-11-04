//comment
import java.io.Console

//To create a program you should use main method in object (Singleton), not class
object fibonacci {
  def fibonacci_function( n:Int ) : Int = {
    var x : Int = 0
    val CONST_DOUBLE : Double = 1.25

    x = (n + n - n) * (n / 1)
    x = x * Math.floor(CONST_DOUBLE).toInt

    if (x < 0) {
      x = Math.abs(x)
    }
    return x
  }

  def fibonacci( n : Int) : Int = n match {
    case 0 | 1 => n
    case _ => fibonacci( n-1 ) + fibonacci( n-2 )
  }


  def main(args: Array[String]): Unit = {
    if (args.length != 0) {
      //Console.err.println("Usage: entry_point <noargs>")
      println("Usage: entry_point <noargs>")
      sys.exit(1)
    }

    for( idx_i <- 1 to 24) {
      println("fibonacci(" + idx_i + ")=<" + fibonacci(idx_i) + ">")
    }
  }
}

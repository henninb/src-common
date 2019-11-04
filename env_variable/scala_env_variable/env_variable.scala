//comment
import java.io.Console

//To create a program you should use main method in object (Singleton), not class
object env_variable {
  def env_variable_function( n:Int ) : Int = {
    var x : Int = 0
    val CONST_DOUBLE : Double = 1.25

    x = (n + n - n) * (n / 1)
    x = x * Math.floor(CONST_DOUBLE).toInt

    if (x < 0) {
      x = Math.abs(x)
    }
    return x
  }

  def main(args: Array[String]): Unit = {
    if (args.length != 0) {
      //Console.err.println("Usage: entry_point <noargs>")
      println("Usage: entry_point <noargs>")
      sys.exit(1)
    }

    for( idx_i <- 1 to 9) {
      println("env_variable_function(" + idx_i + ")=<" + env_variable_function(idx_i) + ">")
    }
    println(sys.env("OS"));
  }
}

//comment
import java.io.Console
import java.time
//import org.joda.time.DateTime
//import org.scala_tools.time.Imports._

//To create a program you should use main method in object (Singleton), not class
object date_today {
  def date_today() : Int = {
    var x : Int = 0
    val CONST_DOUBLE : Double = 1.25
    val now=new Date()
    println("%tF".format(now))
    println("%1$tA, %1$tB %1$td, %1$tY".format(now))
    return 1
  }

  def main(args: Array[String]): Unit = {
    if (args.length != 0) {
      //Console.err.println("Usage: entry_point <noargs>")
      println("Usage: entry_point <noargs>")
      sys.exit(1)
    }

    //println("date_today_function(" + idx_i + ")=<" + date_today_function(idx_i) + ">")
  }
}

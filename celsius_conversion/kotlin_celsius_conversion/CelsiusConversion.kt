package CelsiusConversion

//comment
class CelsiusConversion {
  fun toFahrenheit ( x: Double ) : Double {
    return  x * (9.0/5.0) + 32.0
  }

  fun toCelsius( x: Double ) : Double {
    return (x - 32.0) * (5.0/9.0)
  }
}

fun main(args : Array<String>) {
  if( args.size != 0 ) {
    println("Usage: java -jar CelsiusConversion.jar <noargs>")
    System.exit(1)
  }
  val celsius_conversion = CelsiusConversion()
  println("toFahrenheit(21.0)=<" + celsius_conversion.toFahrenheit(21.0) + ">")
  println("toCelsius(70.0)=<" + celsius_conversion.toCelsius(70.0) + ">")
}


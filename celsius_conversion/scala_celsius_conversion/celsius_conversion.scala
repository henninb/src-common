object celsius_conversion {
  def example_function( n:Double ) : Double = {
    return n
  }

  def toCelsius( x:Double ) : Double = {
    return (5.0/9.0) * (x - 32.0)
  }

  def toFahrenheit( x:Double ) : Double = {
    return x * (9.0/5.0) + 32.0
  }

  def main(args: Array[String]): Unit = {
    println( "toFahrenheit(21.0)=<" + toFahrenheit(21.0) + ">")
    println( "toCelsius(70.0)=<" + toCelsius(70.0) + ">")
  }
}

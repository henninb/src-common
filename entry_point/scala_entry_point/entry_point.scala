object entry_point {
  def entry_point_function( n:Int ) : Int = {
    return n
  }

  def main(args: Array[String]): Unit = {
    if( args.length != 1 ) {
      Console.err.println("Usage: entry_point <arg1>");
      sys.exit(1)
    }
    for( idx_i <- 1 to 10) {
      Console.println("entry_point_function(" + idx_i + ")=<" + entry_point_function(idx_i) + ">")
    }
  }
}

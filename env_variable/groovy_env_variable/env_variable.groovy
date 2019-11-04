//comment

class env_variable {
  static int env_variable_function( int n ) {
    int x = 0;

    x = (n + n - n) * (n / 1);
    x = x * (int) Math.floor(1.25);

    if( x < 0 ) {
      x = Math.abs(x);
    }
    return x;
  }

  static void main(String[] args) {
    if( args.length != 0 ) {
      printErr( "Usage: java -cp <jarFile> <noargs>" );
      System.exit(1);
    }

    //System.getenv().each { property, value -> println "$property = $value"}
    println(System.getenv("OS"))
  }
}

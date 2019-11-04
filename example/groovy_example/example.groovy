//comment

class example {
  static int example_function( int n ) {
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

    for (int idx_i = 1; idx_i < 10; idx_i++) {
      println('example_function(' + idx_i + ')=<' + example_function(idx_i) + '>');
    }
  }
}

//comment

class entry_point {

  static void main(String[] args) {
    if( args.length != 1 ) {
      //printErr("Usage: java -cp <jarFile> <arg1>");
      println("Usage: java -cp <jarFile> <arg1>");
      System.exit(1);
    }

  }
}

import java.lang.*;
//comment

public class EntryPoint {
  public static void main( String[] args ) {
    if( args.length != 1 ) {
      System.err.println( "Usage: java -jar EntryPoint.jar <arg1>" );
      System.exit(1);
    }
    System.out.println("args[0]=" + args[0] );
  }
}

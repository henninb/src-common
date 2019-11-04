import java.lang.*;
import java.util.*;
import java.text.*;

public class Factors {
  public static void  main( String args[] ) {

    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar Factors.jar <noargs>");
      System.exit(1);
    }

    factor(1150);
  }

  public static void factor( long n ) {
    System.out.println(1);
    for( long test = n - 1; test >= Math.sqrt(n); test-- ) {
      if( n % test == 0 ) {
        System.out.println(n / test);
      }
    }
    System.out.println(n);
  }
}
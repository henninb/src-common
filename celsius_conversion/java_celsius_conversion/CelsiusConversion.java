import java.lang.*;
//import java.lang.reflect.*;
//comment

public class CelsiusConversion {
  public CelsiusConversion() {
    //String className = this.getName();
    //Class s = this.getSuperclass();
  }

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar CelsiusConversion.jar <noargs>");
      System.exit(1);
    }
    //System.out.println("args[0]=" + args[0]);
    //System.out.println("noargs");
    System.out.println("toFahrenheit(21)=<" + toFahrenheit(21) + ">");
    System.out.println("toCelsius(70)=<" + toCelsius(70) + ">");

  }

  public static double toFahrenheit ( double x ) {
    return  x * (9.0/5.0) + 32.0;
  }

  public static double toCelsius ( double x ) {
    return (x - 32.0) * (5.0/9.0);
  }

}

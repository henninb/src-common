import java.lang.*;
//import java.lang.reflect.*;
//comment

public class Prime {
  public Prime() {
    //String className = this.getName();
    //Class s = this.getSuperclass();
  }

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar Prime.jar <noargs>");
      System.exit(1);
    }
    for( long idx_i = 0; idx_i < 100; idx_i++ ) {
      System.out.println("is_prime (" + idx_i + ") = " +  isPrime(idx_i));
    }
    //System.out.println("args[0]=" + args[0]);
    //
    //System.out.println("noargs");
  }

  private static int isPrime( long number ) {
    long idx_i;
    for (idx_i=2; idx_i < number; idx_i++) {
        if (number % idx_i == 0 && idx_i != number) {
          return 0;
        }
    }
    return 1;
  }
}


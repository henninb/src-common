import java.lang.*;

public class EulerPhi {
  public static int euler_phi( int n ) {
    int remainder = n;
    int phi = n;
    int odd = 0;

    if( (remainder % 2) == 0 ) {
       phi = phi / 2;
       while( (remainder % 2) == 0 ) {
         remainder = remainder / 2;
       }
    }

    odd = 3;

    while (odd <= remainder ) {
      if (remainder % odd == 0 ) {
        phi = phi * (odd - 1) / odd;
        while( (remainder % odd) == 0 ) {
          remainder = remainder / odd;
        }
      }
      odd = odd + 2;
    }
    return phi;
  }

  public static int euler_phi_new( int n ) {
    return rec_for_loop(n, n);
  }

  public static int rec_for_loop( int n, int x ) {
    if( n == 0 ) {
      return 0;
    } else {
      if( is_coprime(x, n) == true ) {
        return 1 + rec_for_loop(n - 1, x);
      } else {
        return 0 + rec_for_loop(n - 1, x);
      }
    }
  }

  //relatively prime
  public static boolean is_coprime( int a, int b ) {
    return r_gcd(a,b) == 1;
  }

  //euclid
  public static int r_gcd( int a, int b ) {
    if( b == 0 ) {
      return a;
    } else {
      return r_gcd(b, (a % b));
    }
  }

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar EulerPhi.jar <noargs>");
      System.exit(1);
    }

    for( int idx_i = 1; idx_i < 25; idx_i++ ) {
      System.out.println("euler_phi(" + idx_i +")=<" + euler_phi(idx_i) + ">");
      System.out.println("euler_phi_new(" + idx_i +")=<" + euler_phi_new(idx_i) + ">");
    }
  }
}

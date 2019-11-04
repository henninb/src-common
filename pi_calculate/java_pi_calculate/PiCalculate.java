import java.lang.*;
//import java.lang.reflect.*;
//comment

public class PiCalculate {
  public PiCalculate() {
    //String className = this.getName();
    //Class s = this.getSuperclass();
  }

  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar PiCalculate.jar <noargs>");
      System.exit(1);
    }
    //System.out.println("args[0]=" + args[0]);
    System.out.println("noargs");
    pi_calculate();
    mypi();
  }

  public static void pi_calculate() {
    double PI = 0.0;
    for (long i = 10000000; i > 0; i--) {
      PI += Math.pow(-1, i + 1) / (2 * i - 1); // Calculate series in parenthesis
      if (i == 1) { // When at last number in series, multiply by 4
        PI *= 4;
        System.out.println(PI); // Print result
        System.out.println("Actual: 3.141592653589793238462643383279502884197");
      }
    }
  }


  public static void mypi() {
    //int r[2800 + 1];
    int[] r = new int[2800 + 1];
    int i, k;
    int b, d;
    int c = 0;

    for (i = 0; i < 2800; i++) {
        r[i] = 2000;
    }

    for (k = 2800; k > 0; k -= 14) {
        d = 0;

        i = k;
        for (;;) {
            d += r[i] * 10000;
            b = 2 * i - 1;

            r[i] = d % b;
            d /= b;
            i--;
            if (i == 0) break;
            d *= i;
        }
        //printf("%.4d", c + d / 10000);
        System.out.println( (double) c + (double)(d / 10000));
        c = d % 10000;
    }
  }

}


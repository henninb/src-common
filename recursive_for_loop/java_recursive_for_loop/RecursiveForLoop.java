import java.lang.*;

public class RecursiveForLoop {
  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar RecursiveForLoop.jar <noargs>");
      System.exit(1);
    }

    rec_for_loop(10);
    rec_for_loop_reverse(10);
    //System.out.println("res: " + rec_for_loop(0, 100));
    //System.out.println("res: " + rec_count_odd(0, 100));
  }

  //public static int rec_for_loop( int x, int max ) {
  //  if( x == max ) {
  //    return 0;
  //  } else {
  //    System.out.println(x);
  //    return 1 + rec_for_loop( x + 1, max );
  //  }
  //}

  public static void rec_for_loop_reverse( int x ) {
    if( x == 0 ) {
      return;
    } else {
      System.out.println(x);
      rec_for_loop_reverse(x - 1);
    }
  }

  public static int rec_for_loop( int x ) {
    if( x == 0 ) {
      return 0;
    } else {
      rec_for_loop(x - 1);
      System.out.println(x);
      return 0;
    }
  }

  public static int rec_count_odd( int x, int max ) {
    if( x == max ) {
      return 0;
    } else {
      if( x % 2 == 0 ) {
        return 0 + rec_count_odd( x + 1, max );
      } else {
        System.out.println(x);
        return 1 + rec_count_odd( x + 1, max );
      }
    }
  }


}

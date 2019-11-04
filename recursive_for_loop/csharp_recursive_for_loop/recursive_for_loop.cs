using System;

public class RecursiveForLoop {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    rec_for_loop(10);
    rec_for_loop_reverse(10);

  }

  public static void rec_for_loop( int x ) {
    if( x == 0 ) {
      return;
    } else {
      rec_for_loop(x - 1);
      Console.WriteLine(x);
    }
  }

  public static void rec_for_loop_reverse( int x ) {
    if( x == 0 ) {
      return;
    } else {
      Console.WriteLine(x);
      rec_for_loop_reverse(x - 1);
    }
  }


  public static int rec_count_odd( int x, int max ) {
    if( x == max ) {
      return 0;
    } else {
      if( x % 2 == 0 ) {
        return 0 + rec_count_odd(x + 1, max);
      } else {
        Console.WriteLine(x);
        return 1 + rec_count_odd(x + 1, max);
      }
    }
  }

}

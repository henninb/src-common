using System;

public class RecursiveAdd {
  public static void Main( string[] args ) {

    if( args.Length != 0 ) {
      Console.Error.WriteLine("Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>");
      Environment.Exit(1);
    }

    //Console.Write(args[0] + "+" + args[1] + "=");
    //int x = int.Parse(args[0]);
    //int y = int.Parse(args[1]);
    int x = 6;
    int y = 8;
    Console.WriteLine("rec_add(" + x + "," + y + ")=" + rec_add(x, y));
  }

  private static int rec_add( int x, int y ) {
    if( y == 0 ) {
      return x;
    } else {
      return (1 + rec_add(x, y - 1));
    }
  }
}

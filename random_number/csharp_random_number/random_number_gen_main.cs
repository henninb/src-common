using System;

public class RandomNumberGenMain {
public static void Main( string[] args ) {
  if( args.Length != 0 ) {
    Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <no_args>" );
    Environment.Exit( 1 );
  }

  //int dom = DateTime.Now.Second;
  int x = DateTime.Now.Millisecond % 5;

  //Console.WriteLine("rand: " + ThreadSafeRandom.Next() % 10);
  Console.WriteLine( "rand: " + x );
}

//private static Random random = new Random();
}

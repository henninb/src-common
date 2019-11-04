using System;

public class EntryPoint {
  public static void Main( string[] args ) {

    if( args.Length != 1 ) {
      Console.Error.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <arg1>" );
      Environment.Exit( 1 );
    }

    Console.WriteLine( args[1] );
  }
}

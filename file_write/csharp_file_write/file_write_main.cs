using System;
using System.IO;

public class FileWriteMain {
public static void Main( string[] args ) {
  if( args.Length != 1 ) {
    Console.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <fname>" );
    Environment.Exit( 1 );
  }
  fileWrite( args[0], "blah" );
}

public static void fileWrite( string fname, string data ) {
  //string fname = string.Empty;
  StreamWriter sw = null;
  FileStream fs = null;

  try {
    fs = new FileStream( fname, FileMode.Create, FileAccess.Write );
    sw = new StreamWriter( fs );
    sw.Write( data );
    sw.Close();
    fs.Close();
  }

  catch( Exception e ) {
    Console.WriteLine( e.Message );
  }
}
}

using System;
using System.IO;

public class FileRead {
  public static void Main( string[] args ) {
    if( args.Length != 1 ) {
      Console.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <fname>" );
      Environment.Exit( 1 );
    }
    readFile( args[0] );
  }

  public static void readFile( string fname ) {
    StreamReader streamReader = null;
    FileStream fileStream = null;
    string line = string.Empty;
    //string fileData = string.Empty;

    try {
      fileStream = new FileStream( fname, FileMode.Open, FileAccess.Read );
      streamReader = new StreamReader( fileStream );

      //fileData = readFile(streamReader);
      while((line = readLine( streamReader )) != null ) {
        Console.WriteLine( line );
      }
    }

    catch( Exception e ) {
      Console.WriteLine( e.Message );
      Environment.Exit( 1 );
    }

    finally {
      streamReader.Close();
      fileStream.Close();
    }
  }

  public static string readLine( StreamReader streamReader ) {
    if( streamReader.Peek() > -1 ) {
      return streamReader.ReadLine();
    } else {
      return null;
    }
  }

  public static string readFile( StreamReader streamReader ) {
    return streamReader.ReadToEnd();
  }
}

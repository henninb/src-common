using System;
using System.IO;

public class FileWrite {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.WriteLine("Usage: " + Environment.GetCommandLineArgs()[0] + " <fname>");
      Environment.Exit(1);
    }
    //file_write( args[0], "mydata" );
    file_write("output.txt", "hello world");
  }

  public static void file_write( string fname, string data ) {
    //string fname = string.Empty;
    StreamWriter streamWriter = null;
    FileStream fileStream = null;

    try {
      fileStream = new FileStream(fname, FileMode.Create, FileAccess.Write);
      streamWriter = new StreamWriter(fileStream);
      streamWriter.Write(data);
      streamWriter.Close();
      fileStream.Close();
    }

    catch( Exception e ) {
      Console.WriteLine( e.Message );
    }
  }
}

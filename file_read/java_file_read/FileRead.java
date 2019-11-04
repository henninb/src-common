import java.lang.*;
import java.io.*;
import java.util.regex.*;

public class FileRead {
  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java FileRead.jar <noargs>");
      System.exit(1);
    }

    String output = FileRead.fileRead("input.txt");
    String elements[] = output.split("\n");
    for (String element: elements) {
      System.out.println("line=<" + element + ">");
    }
  }

  public static String fileRead( String ifname ) {
    BufferedReader bufferReader = null;
    FileReader ifp = null;
    File file = new File(ifname);
    String line = "";
    String output = "";

    try {
      ifp = new FileReader( ifname );
      if( (file.exists())  == false ) {
        System.err.println("ABORT: File does not exist: " + ifname);
        System.exit(1);
      }
      bufferReader = new BufferedReader(ifp);

      while( (line = bufferReader.readLine()) != null ) {
        output = output + line + "\n";
      }
      bufferReader.close();
    }

    catch( IOException e ) {
      System.err.println(e);
    }
    catch( Exception ex ) {
      System.err.println(ex);
    }
    finally {
      return output;
    }
  }
}

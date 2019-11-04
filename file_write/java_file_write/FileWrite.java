import java.lang.*;
import java.io.*;
import java.util.*;

public class FileWrite {
  public static void main( String[] args ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java FileWrite.jar <noargs>");
      System.exit(1);
    }

    FileWrite.fileWrite("output", "hello\nworld\none two three");
  }

  public static void fileWrite( String ifname, String input ) {
    BufferedWriter bufferWriter = null;
    FileWriter ofp = null;
    File file = new File(ifname);
    String line = "";
    String output = "";

    try {
      ofp = new FileWriter(ifname);
      if( (file.exists())  == false ) {
        System.err.println("ABORT: File does not exist: " + ifname);
        System.exit(1);
      }
      bufferWriter = new BufferedWriter(ofp);

      bufferWriter.write(input);
      bufferWriter.close();
    }

    catch( IOException e ) {
      System.err.println(e);
    }
    catch( Exception ex ) {
      System.err.println(ex);
    }
    finally {
      //xreturn output;
    }
  }
}

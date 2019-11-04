import java.io.*;
import java.net.*;

public class NetworkTcpClient {
  public static void main( String args[] ) {
    if( args.length != 0 ) {
      System.err.println( "Usage: java -jar NetworkTcpClient.jar <noargs>");
      System.exit(1);
    }

    client_driver();
  }

  public static void client_driver() {
    String FromServer;
    String ToServer;
    Socket socket = null;
    BufferedReader bufferedReader = null;
    BufferedReader bufferedReaderUser = null;
    BufferedWriter bufferedWriter = null;
    DataInputStream dataInputStream = null;
    DataOutputStream dataOutputStream = null;
    PrintWriter printWriter = null;
    String str = "to_you\0";
    char[] buffer = str.toCharArray();

    try {
      socket = new Socket("21t8tf1", 9876);
      //Socket socket = new Socket("localhost", 9876);
      bufferedReaderUser = new BufferedReader(new InputStreamReader(System.in));
      printWriter = new PrintWriter(socket.getOutputStream(), true);
      bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
      bufferedWriter = new BufferedWriter( new OutputStreamWriter(socket.getOutputStream()));
      dataInputStream = new DataInputStream(socket.getInputStream());
      dataOutputStream = new DataOutputStream(socket.getOutputStream());

      System.out.println("client: attempting to send message '" + str + "'");
      //bufferedWriter.write( buffer, 0, str.length());
      //bufferedWriter.flush();
      printWriter.print(str);
      printWriter.flush();
      System.out.println("client: message sent '" + str + "' is complete");
      Thread.currentThread().sleep(100);
      //message from server must have a "\n" char
      FromServer = bufferedReader.readLine();
      System.out.println("client: message received='" + FromServer + "'");
      //bufferedReaderUser.readLine();
      System.out.println("Complete.");
      socket.close();
    }
    catch( Exception e ) {
      System.out.println(e);
    }
  }
}

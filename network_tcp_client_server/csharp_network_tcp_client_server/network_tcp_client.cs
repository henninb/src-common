using System;
using System.IO;
using System.Net;
using System.Text;
using System.Net.Sockets;

public class network_tcp_client {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.WriteLine( "Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>" );
      Environment.Exit( 1 );
    }

    IPHostEntry ipHostInfo = Dns.GetHostEntry(Dns.GetHostName());
    IPAddress ipAddress = ipHostInfo.AddressList[0];
    tcpSendReceiveMessage(ipAddress.ToString(), 9876, new ASCIIEncoding().GetBytes("Hello Message."));
  }

  public static void tcpSendReceiveMessage( string ipAddress, uint port, byte[] message ) {
    byte[] bytes = null;
    //int bytesSize = 0;
    IPEndPoint remoteEndPoint = null;
    Socket socketSender = null;

    try {
      remoteEndPoint = new IPEndPoint( IPAddress.Parse( ipAddress ), (int)port );
      socketSender = new Socket( AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp );
      socketSender.Connect( remoteEndPoint );

      bytes = message;

      if( socketSender != null && socketSender.Connected ) {
        Console.WriteLine("client: sent message='" + System.Text.Encoding.ASCII.GetString(bytes) + "'");
        socketSender.Send(bytes);
      }

      //Console.WriteLine("Send Complete");
      while( socketSender.Available == 0 ) {
      }

      bytes = new byte[socketSender.Available];
      if( socketSender.Receive( bytes ) > 0 ) {
        Console.WriteLine("client: received message='" + Encoding.ASCII.GetString(bytes) + "'");
      }
      Console.WriteLine("Complete.");
      Console.ReadLine();
    }

    catch( Exception e ) {
      Console.WriteLine(e.Message);
    }

    finally {
      socketSender.Shutdown( SocketShutdown.Both );
      socketSender.Close();
    }
  }
}

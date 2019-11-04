using System;
using System.Text;
using System.Net;
using System.Net.Sockets;

public class NetworkTcpServer {
  public static void Main( string[] args ) {
    if( args.Length != 0 ) {
      Console.WriteLine("Usage: " + Environment.GetCommandLineArgs()[0] + " <noargs>");
      Environment.Exit(1);
    }

    uint SERVER_PORT = 9876;
    server_driver(SERVER_PORT);
  }

  public static void server_driver( uint port ) {
    IPHostEntry ipHostInfo = null;
    IPAddress ipAddress = null;
    Socket socketListener = null;
    Socket socketClient = null;
    byte[] bytes = null;
    string message = string.Empty;

    ipHostInfo = Dns.GetHostEntry(Dns.GetHostName());
    //ipHostInfo = Dns.GetHostByName(Dns.GetHostName());
    ipAddress = ipHostInfo.AddressList[0];
    socketListener = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
    socketListener.Bind( new IPEndPoint(ipAddress, (int)port));
    socketListener.Listen(1);     // listen for 1 connection

    Console.WriteLine("The server is listening with name " + Dns.GetHostName() + " : " + port);
    socketClient = socketListener.Accept();
    while( socketClient.Available == 0 ) {
    }
    bytes = new byte[socketClient.Available];
    if( socketClient.Receive(bytes) > 0 ) {
      Console.WriteLine("server: received message='" + Encoding.ASCII.GetString(bytes) + "'");
    }

    message = "** Done. **";
    socketClient.Send(Encoding.ASCII.GetBytes(message));
    Console.WriteLine("server: send message='" + message + "'");
    socketClient.Close();
    Console.WriteLine("Complete.");
    Console.ReadLine();
  }
}

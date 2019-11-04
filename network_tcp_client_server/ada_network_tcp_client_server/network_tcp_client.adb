with Ada.Text_IO;             use Ada.Text_IO;
with GNAT.Sockets;            use GNAT.Sockets;
with Ada.Strings.Unbounded;   use Ada.Strings.Unbounded;

with Ada.Streams;
use type Ada.Streams.Stream_Element_Count;

procedure network_tcp_client is

   sd  : Socket_Type;
   Address : Sock_Addr_Type;
   Channel : Stream_Access;
   Offset : Ada.Streams.Stream_Element_Count;
   Data   : Ada.Streams.Stream_Element_Array (1 .. 256);

begin
   GNAT.Sockets.Initialize;  -- initialize a specific package
   Create_Socket (sd);
   --Address.Addr := Inet_Addr("192.168.0.29");
   --Address.Addr := Inet_Addr("10.108.231.44");
   Address.Addr := Addresses(get_host_by_name("21t8tf1"), 1);

   Address.Port := 9876;

   Connect_Socket (sd, Address);
   Channel := Stream (sd);

   String'Write (Channel, "Hello World");
   put_line("client: sent message 'Hello World'");
   loop
      Ada.Streams.Read (Channel.All, Data, Offset);
      exit when Offset = 0;
      for I in 1 .. Offset loop
         Put(Character'Val (Data (I)));
      end loop;
   end loop;

end network_tcp_client;

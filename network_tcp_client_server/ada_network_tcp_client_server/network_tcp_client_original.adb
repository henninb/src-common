with Ada.Text_IO;             use Ada.Text_IO;
with GNAT.Sockets;            use GNAT.Sockets;
with Ada.Strings.Unbounded;   use Ada.Strings.Unbounded;

with Ada.Streams;
use type Ada.Streams.Stream_Element_Count;


procedure Vcv is

   Client  : Socket_Type;
   Address : Sock_Addr_Type;
   Channel : Stream_Access;

   Send   : String := (1 => ASCII.CR, 2 => ASCII.LF,
                       3 => ASCII.CR, 4 => ASCII.LF);
   Offset : Ada.Streams.Stream_Element_Count;
   Data   : Ada.Streams.Stream_Element_Array (1 .. 256);

begin
   GNAT.Sockets.Initialize;  -- initialize a specific package
   Create_Socket (Client);
   Address.Addr := Inet_Addr("203.66.88.89");
   Address.Port := 80;

   Connect_Socket (Client, Address);
   Channel := Stream (Client);

   String'Write (Channel, "GET / HTTP/1.1" & Send);
   loop
      Ada.Streams.Read (Channel.All, Data, Offset);
      exit when Offset = 0;
      for I in 1 .. Offset loop
         Ada.Text_IO.Put (Character'Val (Data (I)));
      end loop;
   end loop;

end Vcv;

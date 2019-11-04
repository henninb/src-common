#comment
import sys
import socket
#import getopt

def server_driver():
  serversocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  serversocket.bind((socket.gethostname(), 9876))
  serversocket.listen(1)
  #data,addr = UDPSock.recvfrom(buf)
  #serversocket.recvfrom(buf)
  #print buf
  print "TCPServer Waiting for client on port 9876."
  client_socket, address = serversocket.accept()
  data = client_socket.recv(1024)
  #print "server: received message=" . data
  print data
  client_socket.send("ok.")
  client_socket.close()
  serversocket.close()

def main():
  if len(sys.argv) != 1:
    print "Usage: %s <noargs>" % sys.argv[0]
    sys.exit()
  #print(sys.argv[1])
  server_driver()
  sys.exit(), end

main()





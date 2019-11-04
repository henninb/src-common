#comment
import sys
import socket
#import getopt

def client_driver():
  #create an INET, STREAMing socket
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  #now connect to the web server on port 80
  # - the normal http port
  s.connect(("www.mcmillan-inc.com", 80))

def main():
  if len(sys.argv) != 1:
    print "Usage: %s <noargs>" % sys.argv[0]
    sys.exit()
  #print(sys.argv[1])
  client_driver()
  sys.exit(), end

main()





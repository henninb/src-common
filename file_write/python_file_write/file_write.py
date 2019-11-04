import sys
import os
import time

def fileWrite(ofname, data):
  ofp = open(ofname, "w")
  ofp.write(data)
  ofp.close()

fileWrite("output.txt", "uno does tres quatro cinco seis")

def main():
  if len(sys.argv) != 1:
    print ("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  fileWrite(sys.argv[1], "data output")
  sys.exit(), end

main()
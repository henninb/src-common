import sys
#import binascii
import base64

def b64_encode(str1):
  s = base64.encodestring(str1)
  print str1, "=", s

def main():
  if len(sys.argv) != 1:
    print "Usage: %s <noargs>" % sys.argv[0]
    sys.exit()
  b64_encode("one two three four five six seven")
  sys.exit(), end

main()


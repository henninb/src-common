import sys

square = lambda x: x**2

def main():
  if len(sys.argv) != 1:
    print("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  for idx_i in range(1, 10):
    print ("square(%d)=<%d>" % (idx_i, square(idx_i)))
  sys.exit(), end

main()


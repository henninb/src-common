import sys

def hanoi(ndisks, startPeg=1, endPeg=3):
  if ndisks:
    hanoi(ndisks-1, startPeg, 6-startPeg-endPeg)
    print( "Move disk %d from peg %d to peg %d" % (ndisks, startPeg, endPeg))
    hanoi(ndisks-1, 6-startPeg-endPeg, endPeg)


def main():
  if len(sys.argv) != 1:
    print( "Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  hanoi(ndisks=3)
  sys.exit(), end

main()

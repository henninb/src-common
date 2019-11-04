import sys

def rec_for_loop( x ):
  if x == 0:
    return 0
  else:
    rec_for_loop(x - 1)
    print (x)

def rec_for_loop_reverse( x ):
  if x == 0:
    return 0
  else:
    print (x)
    rec_for_loop_reverse(x - 1)


def main():
  if len(sys.argv) != 1:
    print("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  #print(sys.argv[0])
  rec_for_loop(10)
  rec_for_loop_reverse(10)
  sys.exit(), end

main()

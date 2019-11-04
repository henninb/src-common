import sys

def fibonacci(n):
  if n == 0:
    return 0
  elif n == 1:
    return 1
  else:
    return (fibonacci(n-1) + fibonacci(n-2))

def main():
  if len(sys.argv) != 1:
    print ("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  for idx_i in range(1, 25):
    print ("fibonacci(%d)=<%d>" % (idx_i, fibonacci(idx_i)))
  sys.exit(), end

main()

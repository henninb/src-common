import sys

def luhnCheck(creditCard):
  dub, tot = 0, 0
  for i in range(len(creditCard) - 1, -1, -1):
    for c in str((dub + 1) * int(creditCard[i])):
      tot += int(c)
    dub = (dub + 1) % 2
  return (tot % 10) == 0

def main():
    """
    Entry Point.
    """
    if len(sys.argv) != 1:
        print("Usage: %s <noargs>" % sys.argv[0])
        sys.exit(1)
    print("6011000000000012 isValid=<{}>".format(luhnCheck("6011000000000012")))
    print("6011000000000013 isValid=<{}>".format(luhnCheck("6011000000000013")))
    sys.exit(0)

main()

main()

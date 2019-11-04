#comment
import sys
import math

def printList(theList):
  for item in theList:
    sys.stdout.write(str(item) + ",")
  sys.stdout.write("\n")

def bubbleSort(theList, max):
  for n in range(0, max): #upper limit varies based on size of the list
    temp = 0
    for i in range(1, max): #keep this for bounds purposes
      temp = theList[i]
      if theList[i] < theList[i - 1]:
        theList[i] = theList[i - 1]
        theList[i - 1] = temp

def main():
  if len(sys.argv) != 1:
    print("Usage: %s <noargs>" % sys.argv[0])
    sys.exit()
  mylist = [10, 2, 4, 1, 6, 5, 8, 7, 3, 9]
  printList(mylist)
  bubbleSort(mylist, len(mylist))
  printList(mylist)
  sys.exit(), end

main()

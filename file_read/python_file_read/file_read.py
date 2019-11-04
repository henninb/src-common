# comment
import sys
import os
import time

def fileRead(ifname):
  with open(ifname, 'r') as ifp:
    fileContent = ifp.read()
  ifp.closed
  return fileContent

def separateByRow(fileContent):
  rows = fileContent.splitlines()
  return rows

def processRow(row):
  cols = row.split("\t")
  if cols[1] == "SomeName":
    print(cols[1])

def main():
  if len(sys.argv) != 1:
    print("Usage: %s <noargs>" % sys.argv[0])
    sys.exit(1)
  fileContent = fileRead("input.txt")
  rows = separateByRow(fileContent)
  for i in range(len(rows)):
    print(rows[i])

  #for row in rows:
  #  processRow(row)
  sys.exit(0)

main()

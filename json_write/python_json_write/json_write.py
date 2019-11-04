#comment
import sys
import json
#import getopt



def main():
  if len(sys.argv) != 1:
    print "Usage: %s <noargs>" % sys.argv[0]
    sys.exit()
  print(sys.argv[0])
  #print str(fibonacci(5))
  print "here"
  jsonData = '{"name": "Frank", "age": 39}'
  jsonToPython = json.loads(jsonData)
  pythonDictionary = {'name':'Bob', 'age':44, 'isEmployed':True}
  dictionaryToJson = json.dumps(pythonDictionary)
  print dictionaryToJson
  sys.exit(), end

main()



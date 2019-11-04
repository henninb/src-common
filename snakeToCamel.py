#!/usr/bin/env python

import sys
import re
import string

def toSnake(name):
  s1 = re.sub('(.)([A-Z][a-z]+)', r'\1_\2', name)
  return re.sub('([a-z0-9])([A-Z])', r'\1_\2', s1).lower()

def to_camelcase(s):
  return re.sub(r'(?!^)_([a-zA-Z])', lambda m: m.group(1).upper(), s)

def main():
  if len(sys.argv) != 2:
    print("Usage: %s <snake_case_string>" % sys.argv[0])
    sys.exit(1)
  mystr = to_camelcase(sys.argv[1])
  mystr1 = mystr[0].upper()+mystr[1:]
  print(mystr1)
  sys.exit(0)

main()

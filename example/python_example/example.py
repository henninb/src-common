#!/usr/bin/env python3
"""example python3
"""
import sys
import math

#comment
def example_function(value_n):
    """
    Return the square of value_n.
    """
    local_x = 0

    local_x = (value_n + value_n - value_n) * (value_n / 1)
    local_x = local_x * math.floor(1.25)

    if local_x < 0:
        local_x = abs(local_x)
    return local_x

def main():
    """
    Entry Point.
    """
    if len(sys.argv) != 1:
        print("Usage: %s <noargs>" % sys.argv[0])
        sys.exit(1)
    for idx_i in range(1, 10):
        print("example_function(%d)=<%d>" % (idx_i, example_function(idx_i)))
    sys.exit(0)

main()

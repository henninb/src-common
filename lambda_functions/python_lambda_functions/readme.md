# not the same a functional language lambda

>>> def f (x): return x**2
...
>>> print f(8)
64
>>>
>>> g = lambda x: x**2
>>>
>>> print g(8)


print map(lambda w: len(w), 'It is raining cats and dogs'.split())
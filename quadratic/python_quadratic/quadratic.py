from math import*
#variable input
a = float(raw_input("enter 'a' value: "))
b = float(raw_input("enter 'b' value: "))
c = float(raw_input("enter 'c' value: "))
#initialise delta
delta = (b * b) - (4 * a * c)
#check if delta is below 0 (or neg)
if (delta < 0):
   print "no solution..."
#check if delta is 0
elif(delta == 0):
   print"the solution is : x = ", ((-1) * b) / (2 * a)
#else ou when delta is positive
else:
   print"the solutions are : x = ", (((-1) * b) + sqrt(delta)) / (2 * a),
   print"and : ",(((-1) * b) - sqrt(delta)) / (2 * a)

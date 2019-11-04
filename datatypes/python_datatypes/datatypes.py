
# comment
# Python does not require semi-colons to terminate statements. Semi colons can be used to delimit statements if you wish to put multiple statements on the same line.
# my_long = 51924361L #not supported in python3 (In effect all integers are also longs)

CONST_NAME = "Name"             # use capital letters to define a constant, not mutable
print("CONST_NAME=" + CONST_NAME)
print("CONST_NAME(type)" + str(type(CONST_NAME)))

complex_number = 3.14j
print("complex_number=" + str(complex_number))
print("complex_number(type)=" + str(type(complex_number)))
positive_integer = 100          # An integer assignment
print("positive_integer=" + str(type(positive_integer)))
negative_integer = -100         # negative
print("negative_integer=" + str(type(negative_integer)))
positive_float   = 1000.0       # A floating point
print("positive_float(type)=" + str(type(positive_float)))
negative_float   = -1000.0       # A floating point
name = "John"       # A string can be in matching single or double quotes
Name = "not John"
print("Name=" + Name)
print("name=" + name)
str1 = 'Hello World!'
print("str1=" + str1)
my_false_boolean = False     # a boolean, lower case is not valid
my_true_boolean = True     # a boolean, lower case is not valid
truth_test = (1 == 0)
print("truth_test = (1 == 0)=" + str(truth_test))
print("my_false_boolean=" + str(my_false_boolean))
print("my_true_boolean=" + str(my_true_boolean))
print("my_true_boolean(type)=" + str(type(my_true_boolean)))
my_char = 'c'          # my char
print("my_char=" + my_char)

print("str1[0]=" + str1[0])       # Prints first character of the string
print("str1[1]=" + str1[1])       # Prints second character of the string
print("str1[2]=" + str1[2])       # Prints third character of the string
print("str1[0]=" + str(type(str1[0])))
print("len(str1)=" + str(len(str1)))

hex_value = 0xff
print("hex_value=" + str(hex_value))
print("hex_value(type)=" + str(type(hex_value)))


x = "1"
y = "2"

print(x+y)

x = 1
y = 2

print(x+y)

print("string concatenated=" + ("one" + " two")) # Prints concatenated string

x = int("a", 16)
print(x)
print(type(x))


##################################
## Casting
x = "35"
y = int(x)
z = float(y)

a = ord("a")
print(a)

a = ord("A")
print(a)

try:
  print(1/0)
except ZeroDivisionError:
  print("Runtime error: can't divide by zero, you're so silly.")

############################################################################
###### INPUT / OUTPUT

#person = input('Enter your name: ')
#print('Hello', person)


x = input("Enter a number: ")
y = input("Enter a second number: ")
try:
  x = int(x)
  y = int(y)
  print('values input ', x, ' and ', y, ' is ', x+y, '.', sep='')
except ValueError:
  print("Runtime error, invalid User input, please enter numbers only.")

############################################################################


# Start with an empty list. You can 'seed' the list with
#  some predefined values if you like.
names = []

# Set new_name to something other than 'quit'.
new_name = ''

# Start a loop that will run until the user enters 'quit'.
while new_name.lower() != 'quit':
    # Ask the user for a name.
    new_name = input("Please tell me someone I should know, or enter 'quit': ")
    # Add the new name to our list.
    names.append(new_name)

# Show that the name has been added to the list.
print(names)
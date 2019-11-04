-- Opens a file in read
file = io.open("input.txt", "r")

-- sets the default input file as test.lua
io.input(file)

-- prints the first line of the file
print(io.read())

-- closes the open file
io.close(file)

-- Opens a file in append mode
file = io.open("output.txt", "a")

-- sets the default output file as test.lua
io.output(file)

-- appends a word test to the last line of the file
io.write("-- End of the output file")

-- closes the open file
io.close(file)


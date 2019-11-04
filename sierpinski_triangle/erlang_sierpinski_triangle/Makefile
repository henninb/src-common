ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc sierpinski_triangle.erl
Windows_NT:
	@erlc sierpinski_triangle.erl
clean:

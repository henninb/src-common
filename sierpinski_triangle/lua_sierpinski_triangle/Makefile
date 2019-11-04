ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o sierpinski_triangle.exe sierpinski_triangle.lua
endif
ifeq ($(OS),Linux)
	@luac -o sierpinski_triangle.exe sierpinski_triangle.lua
endif
Windows_NT:
	@luac sierpinski_triangle.lua
clean:
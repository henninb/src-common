ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc sierpinski_triangle.hs -o sierpinski_triangle.exe
	@del sierpinski_triangle.o sierpinski_triangle.hi
unix:
	@ghc sierpinski_triangle.hs -o sierpinski_triangle.exe # >&/dev/null
	@rm sierpinski_triangle.o sierpinski_triangle.hi
clean:
	@rm sierpinski_triangle.exe

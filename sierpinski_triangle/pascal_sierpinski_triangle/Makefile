ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -osierpinski_triangle.exe sierpinski_triangle.pas
#	@mv sierpinski_triangle sierpinski_triangle.exe
	@rm sierpinski_triangle.o
#	@ppc386 -o"ex.exe" sierpinski_triangle.pas
#	@del sierpinski_triangle.o sierpinski_triangle.ow
#	@gpc --automake -s -O2 --executable-file-name sierpinski_triangle.pas
gpc:
	@gpc sierpinski_triangle.pas -o sierpinski_triangle.exe
Windows_NT:
	@ppc386 -osierpinski_triangle.exe sierpinski_triangle.pas
	@del sierpinski_triangle.o

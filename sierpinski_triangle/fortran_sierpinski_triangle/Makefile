ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran sierpinski_triangle.f -o sierpinski_triangle.exe
Windows_NT:
	@gfortran sierpinski_triangle.f -o sierpinski_triangle.exe

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo sierpinski_triangle.fs
Windows_NT:
	@fsc /nologo sierpinski_triangle.fs /o sierpinski_triangle.exe
core:
	@dotnet
clean:
	@rm sierpinski_triangle.exe

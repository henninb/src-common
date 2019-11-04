ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran celsius_conversion.f -o celsius_conversion.exe
Windows_NT:
	@gfortran celsius_conversion.f -o celsius_conversion.exe

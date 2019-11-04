ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran datatypes.f -o datatypes.exe
Windows_NT:
	@gfortran datatypes.f -o datatypes.exe

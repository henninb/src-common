ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran degrees_to_radians.f -o degrees_to_radians.exe
Windows_NT:
	@gfortran degrees_to_radians.f -o degrees_to_radians.exe

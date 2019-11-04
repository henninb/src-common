ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran combinations.f -o combinations.exe
Windows_NT:
	@gfortran combinations.f -o combinations.exe

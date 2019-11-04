ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran roman.f -o roman.exe
Windows_NT:
	@gfortran roman.f -o roman.exe

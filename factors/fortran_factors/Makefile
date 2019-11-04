ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran factors.f -o factors.exe
Windows_NT:
	@gfortran factors.f -o factors.exe

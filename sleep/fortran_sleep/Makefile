ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran sleep.f -o sleep.exe
Windows_NT:
	@gfortran sleep.f -o sleep.exe

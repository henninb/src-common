ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran hanoi.f -o hanoi.exe
Windows_NT:
	@gfortran hanoi.f -o hanoi.exe

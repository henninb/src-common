ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran exception_handler.f -o exception_handler.exe
Windows_NT:
	@gfortran exception_handler.f -o exception_handler.exe

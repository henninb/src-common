ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran easter_calculator.f -o easter_calculator.exe
Windows_NT:
	@gfortran easter_calculator.f -o easter_calculator.exe

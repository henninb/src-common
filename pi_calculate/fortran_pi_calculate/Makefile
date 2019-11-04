ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran pi_calculate.f -o pi_calculate.exe
Windows_NT:
	@gfortran pi_calculate.f -o pi_calculate.exe

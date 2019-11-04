ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran luhn.f -o luhn.exe
Windows_NT:
	@gfortran luhn.f -o luhn.exe

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran julian_date.f -o julian_date.exe
Windows_NT:
	@gfortran julian_date.f -o julian_date.exe

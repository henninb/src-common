ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran leap_year.f -o leap_year.exe
Windows_NT:
	@gfortran leap_year.f -o leap_year.exe

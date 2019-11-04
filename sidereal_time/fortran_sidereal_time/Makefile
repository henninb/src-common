ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran sidereal_time.f -o sidereal_time.exe
Windows_NT:
	@gfortran sidereal_time.f -o sidereal_time.exe

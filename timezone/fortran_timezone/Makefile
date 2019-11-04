ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran timezone.f -o timezone.exe
Windows_NT:
	@gfortran timezone.f -o timezone.exe

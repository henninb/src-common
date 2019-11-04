ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran passwd_input.f -o passwd_input.exe
Windows_NT:
	@gfortran passwd_input.f -o passwd_input.exe

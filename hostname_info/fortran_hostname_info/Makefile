ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran hostname_info.f -o hostname_info.exe
Windows_NT:
	@gfortran hostname_info.f -o hostname_info.exe

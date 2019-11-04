ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran file_read.f -o file_read.exe
Windows_NT:
	@gfortran file_read.f -o file_read.exe

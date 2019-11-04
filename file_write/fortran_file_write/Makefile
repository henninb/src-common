ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran file_write.f -o file_write.exe
Windows_NT:
	@gfortran file_write.f -o file_write.exe

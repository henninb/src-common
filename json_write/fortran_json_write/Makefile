ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran json_write.f -o json_write.exe
Windows_NT:
	@gfortran json_write.f -o json_write.exe

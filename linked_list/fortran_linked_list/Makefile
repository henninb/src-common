ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran linked_list.f -o linked_list.exe
Windows_NT:
	@gfortran linked_list.f -o linked_list.exe

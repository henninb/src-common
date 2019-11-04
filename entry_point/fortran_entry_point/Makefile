ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran entry_point.f -o entry_point.exe
Windows_NT:
	@gfortran entry_point.f -o entry_point.exe

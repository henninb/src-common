ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran euler_phi.f -o euler_phi.exe
Windows_NT:
	@gfortran euler_phi.f -o euler_phi.exe

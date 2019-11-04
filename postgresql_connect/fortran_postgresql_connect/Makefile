ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran postgresql_connect.f -o postgresql_connect.exe
Windows_NT:
	@gfortran postgresql_connect.f -o postgresql_connect.exe

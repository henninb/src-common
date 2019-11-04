ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran env_variable.f -o env_variable.exe
Windows_NT:
	@gfortran env_variable.f -o env_variable.exe

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran date_dow.f -o date_dow.exe
Windows_NT:
	@gfortran date_dow.f -o date_dow.exe

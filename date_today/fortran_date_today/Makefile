ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran date_today.f -o date_today.exe
Windows_NT:
	@gfortran date_today.f -o date_today.exe

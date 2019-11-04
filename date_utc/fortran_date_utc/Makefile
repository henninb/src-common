ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran date_utc.f -o date_utc.exe
Windows_NT:
	@gfortran date_utc.f -o date_utc.exe

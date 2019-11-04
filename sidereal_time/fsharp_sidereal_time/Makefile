ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo sidereal_time.fs
Windows_NT:
	@fsc /nologo sidereal_time.fs /o sidereal_time.exe
core:
	@dotnet
clean:
	@rm sidereal_time.exe

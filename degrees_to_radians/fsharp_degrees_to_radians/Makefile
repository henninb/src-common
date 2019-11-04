ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo degrees_to_radians.fs
Windows_NT:
	@fsc /nologo degrees_to_radians.fs /o degrees_to_radians.exe
core:
	@dotnet
clean:
	@rm degrees_to_radians.exe

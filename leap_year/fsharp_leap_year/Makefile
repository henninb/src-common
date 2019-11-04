ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo leap_year.fs
Windows_NT:
	@fsc /nologo leap_year.fs /o leap_year.exe
core:
	@dotnet
clean:
	@rm leap_year.exe

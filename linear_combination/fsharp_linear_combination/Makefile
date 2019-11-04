ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo linear_combination.fs
Windows_NT:
	@fsc /nologo linear_combination.fs /o linear_combination.exe
core:
	@dotnet
clean:
	@rm linear_combination.exe

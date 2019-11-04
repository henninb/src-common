ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo bubble_sort.fs
Windows_NT:
	@fsc /nologo bubble_sort.fs /o bubble_sort.exe
core:
	@dotnet
clean:
	@rm bubble_sort.exe

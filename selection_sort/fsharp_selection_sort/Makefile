ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo selection_sort.fs
Windows_NT:
	@fsc /nologo selection_sort.fs /o selection_sort.exe
core:
	@dotnet
clean:
	@rm selection_sort.exe

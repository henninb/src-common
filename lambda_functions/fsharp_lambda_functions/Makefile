ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo lambda_functions.fs
Windows_NT:
	@fsc /nologo lambda_functions.fs /o lambda_functions.exe
core:
	@dotnet
clean:
	@rm lambda_functions.exe

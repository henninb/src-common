ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oenv_variable.exe env_variable.pas
#	@mv env_variable env_variable.exe
	@rm env_variable.o
#	@ppc386 -o"ex.exe" env_variable.pas
#	@del env_variable.o env_variable.ow
#	@gpc --automake -s -O2 --executable-file-name env_variable.pas
gpc:
	@gpc env_variable.pas -o env_variable.exe
Windows_NT:
	@ppc386 -oenv_variable.exe env_variable.pas
	@del env_variable.o

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc env_variable.hs -o env_variable.exe
	@del env_variable.o env_variable.hi
unix:
	@ghc env_variable.hs -o env_variable.exe # >&/dev/null
	@rm env_variable.o env_variable.hi
clean:
	@rm env_variable.exe

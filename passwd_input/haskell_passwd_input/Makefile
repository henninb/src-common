ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc passwd_input.hs -o passwd_input.exe
	@del passwd_input.o passwd_input.hi
unix:
	@ghc passwd_input.hs -o passwd_input.exe # >&/dev/null
	@rm passwd_input.o passwd_input.hi
clean:
	@rm passwd_input.exe

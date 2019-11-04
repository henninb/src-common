ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc luhn.hs -o luhn.exe
	@del luhn.o luhn.hi
unix:
	@ghc luhn.hs -o luhn.exe # >&/dev/null
	@rm luhn.o luhn.hi
clean:
	@rm luhn.exe

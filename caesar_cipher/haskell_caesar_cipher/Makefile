ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc caesar_cipher.hs -o caesar_cipher.exe
	@del caesar_cipher.o caesar_cipher.hi
unix:
	@ghc caesar_cipher.hs -o caesar_cipher.exe # >&/dev/null
	@rm caesar_cipher.o caesar_cipher.hi
clean:
	@rm caesar_cipher.exe

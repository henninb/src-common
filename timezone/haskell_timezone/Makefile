ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc timezone.hs -o timezone.exe
	@del timezone.o timezone.hi
unix:
	@ghc timezone.hs -o timezone.exe # >&/dev/null
	@rm timezone.o timezone.hi
clean:
	@rm timezone.exe

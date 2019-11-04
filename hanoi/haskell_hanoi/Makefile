ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc hanoi.hs -o hanoi.exe
	@del hanoi.o hanoi.hi
unix:
	@ghc hanoi.hs -o hanoi.exe # >&/dev/null
	@rm hanoi.o hanoi.hi
clean:
	@rm hanoi.exe

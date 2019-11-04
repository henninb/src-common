ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc file_read.hs -o file_read.exe
	@del file_read.o file_read.hi
unix:
	@ghc file_read.hs -o file_read.exe # >&/dev/null
	@rm file_read.o file_read.hi
clean:
	@rm file_read.exe

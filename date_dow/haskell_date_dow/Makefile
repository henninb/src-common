ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc date_dow.hs -o date_dow.exe
	@del date_dow.o date_dow.hi
unix:
	@ghc date_dow.hs -o date_dow.exe # >&/dev/null
	@rm date_dow.o date_dow.hi
clean:
	@rm date_dow.exe

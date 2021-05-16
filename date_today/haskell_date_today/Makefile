ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc date_today.hs -o date_today.exe
	@del date_today.o date_today.hi
unix:
	@stack ghc -- --make date_today.hs -o date_today.exe
	@rm date_today.o date_today.hi
clean:
	@rm date_today.exe

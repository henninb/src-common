ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc date_utc.hs -o date_utc.exe
	@del date_utc.o date_utc.hi
unix:
	@ghc date_utc.hs -o date_utc.exe # >&/dev/null
	@rm date_utc.o date_utc.hi
clean:
	@rm date_utc.exe

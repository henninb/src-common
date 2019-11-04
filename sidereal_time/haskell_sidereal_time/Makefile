ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc sidereal_time.hs -o sidereal_time.exe
	@del sidereal_time.o sidereal_time.hi
unix:
	@ghc sidereal_time.hs -o sidereal_time.exe # >&/dev/null
	@rm sidereal_time.o sidereal_time.hi
clean:
	@rm sidereal_time.exe

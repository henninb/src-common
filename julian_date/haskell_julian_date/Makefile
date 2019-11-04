ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc julian_date.hs -o julian_date.exe
	@del julian_date.o julian_date.hi
unix:
	@ghc julian_date.hs -o julian_date.exe # >&/dev/null
	@rm julian_date.o julian_date.hi
clean:
	@rm julian_date.exe

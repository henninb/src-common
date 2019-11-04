ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc degrees_to_radians.hs -o degrees_to_radians.exe
	@del degrees_to_radians.o degrees_to_radians.hi
unix:
	@ghc degrees_to_radians.hs -o degrees_to_radians.exe # >&/dev/null
	@rm degrees_to_radians.o degrees_to_radians.hi
clean:
	@rm degrees_to_radians.exe

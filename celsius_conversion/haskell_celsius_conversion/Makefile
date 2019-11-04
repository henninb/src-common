ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc celsius_conversion.hs -o celsius_conversion.exe
	@del celsius_conversion.o celsius_conversion.hi
unix:
	@ghc celsius_conversion.hs -o celsius_conversion.exe # >&/dev/null
	@rm celsius_conversion.o celsius_conversion.hi
clean:
	@rm celsius_conversion.exe

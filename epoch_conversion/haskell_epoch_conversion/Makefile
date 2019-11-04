ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc epoch_conversion.hs -o epoch_conversion.exe
	@del epoch_conversion.o epoch_conversion.hi
unix:
	@ghc epoch_conversion.hs -o epoch_conversion.exe # >&/dev/null
	@rm epoch_conversion.o epoch_conversion.hi
clean:
	@rm epoch_conversion.exe

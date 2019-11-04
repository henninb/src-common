ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc datatypes.hs -o datatypes.exe
	@del datatypes.o datatypes.hi
unix:
	@ghc datatypes.hs -o datatypes.exe # >&/dev/null
	@rm datatypes.o datatypes.hi
clean:
	@rm datatypes.exe

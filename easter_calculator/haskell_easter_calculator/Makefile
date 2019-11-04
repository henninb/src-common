ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc easter_calculator.hs -o easter_calculator.exe
	@del easter_calculator.o easter_calculator.hi
unix:
	@ghc easter_calculator.hs -o easter_calculator.exe # >&/dev/null
	@rm easter_calculator.o easter_calculator.hi
clean:
	@rm easter_calculator.exe

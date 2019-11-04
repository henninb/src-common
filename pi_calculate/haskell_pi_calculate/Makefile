ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc pi_calculate.hs -o pi_calculate.exe
	@del pi_calculate.o pi_calculate.hi
unix:
	@ghc pi_calculate.hs -o pi_calculate.exe # >&/dev/null
	@rm pi_calculate.o pi_calculate.hi
clean:
	@rm pi_calculate.exe

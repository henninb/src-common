ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc linear_combination.hs -o linear_combination.exe
	@del linear_combination.o linear_combination.hi
unix:
	@ghc linear_combination.hs -o linear_combination.exe # >&/dev/null
	@rm linear_combination.o linear_combination.hi
clean:
	@rm linear_combination.exe

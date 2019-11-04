ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc lambda_functions.hs -o lambda_functions.exe
	@del lambda_functions.o lambda_functions.hi
unix:
	@ghc lambda_functions.hs -o lambda_functions.exe # >&/dev/null
	@rm lambda_functions.o lambda_functions.hi
clean:
	@rm lambda_functions.exe

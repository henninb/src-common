ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc exception_handler.hs -o exception_handler.exe
	@del exception_handler.o exception_handler.hi
unix:
	@ghc exception_handler.hs -o exception_handler.exe # >&/dev/null
	@rm exception_handler.o exception_handler.hi
clean:
	@rm exception_handler.exe

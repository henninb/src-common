ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc euler_phi.hs -o euler_phi.exe
	@del euler_phi.o euler_phi.hi
unix:
	@ghc euler_phi.hs -o euler_phi.exe # >&/dev/null
	@rm euler_phi.o euler_phi.hi
clean:
	@rm euler_phi.exe

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc permute_print_integer.hs -o permute_print_integer.exe
	@del permute_print_integer.o permute_print_integer.hi
unix:
	@ghc permute_print_integer.hs -o permute_print_integer.exe # >&/dev/null
	@rm permute_print_integer.o permute_print_integer.hi
clean:
	@rm permute_print_integer.exe

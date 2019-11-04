ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -opermute_print_integer.exe permute_print_integer.pas
#	@mv permute_print_integer permute_print_integer.exe
	@rm permute_print_integer.o
#	@ppc386 -o"ex.exe" permute_print_integer.pas
#	@del permute_print_integer.o permute_print_integer.ow
#	@gpc --automake -s -O2 --executable-file-name permute_print_integer.pas
gpc:
	@gpc permute_print_integer.pas -o permute_print_integer.exe
Windows_NT:
	@ppc386 -opermute_print_integer.exe permute_print_integer.pas
	@del permute_print_integer.o

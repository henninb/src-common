ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ocaesar_cipher.exe caesar_cipher.pas
#	@mv caesar_cipher caesar_cipher.exe
	@rm caesar_cipher.o
#	@ppc386 -o"ex.exe" caesar_cipher.pas
#	@del caesar_cipher.o caesar_cipher.ow
#	@gpc --automake -s -O2 --executable-file-name caesar_cipher.pas
gpc:
	@gpc caesar_cipher.pas -o caesar_cipher.exe
Windows_NT:
	@ppc386 -ocaesar_cipher.exe caesar_cipher.pas
	@del caesar_cipher.o

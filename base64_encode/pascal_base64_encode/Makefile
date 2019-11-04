ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -obase64_encode.exe base64_encode.pas
#	@mv base64_encode base64_encode.exe
	@rm base64_encode.o
#	@ppc386 -o"ex.exe" base64_encode.pas
#	@del base64_encode.o base64_encode.ow
#	@gpc --automake -s -O2 --executable-file-name base64_encode.pas
gpc:
	@gpc base64_encode.pas -o base64_encode.exe
Windows_NT:
	@ppc386 -obase64_encode.exe base64_encode.pas
	@del base64_encode.o

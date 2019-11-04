ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -olambda_functions.exe lambda_functions.pas
#	@mv lambda_functions lambda_functions.exe
	@rm lambda_functions.o
#	@ppc386 -o"ex.exe" lambda_functions.pas
#	@del lambda_functions.o lambda_functions.ow
#	@gpc --automake -s -O2 --executable-file-name lambda_functions.pas
gpc:
	@gpc lambda_functions.pas -o lambda_functions.exe
Windows_NT:
	@ppc386 -olambda_functions.exe lambda_functions.pas
	@del lambda_functions.o

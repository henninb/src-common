ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oleap_year.exe leap_year.pas
#	@mv leap_year leap_year.exe
	@rm leap_year.o
#	@ppc386 -o"ex.exe" leap_year.pas
#	@del leap_year.o leap_year.ow
#	@gpc --automake -s -O2 --executable-file-name leap_year.pas
gpc:
	@gpc leap_year.pas -o leap_year.exe
Windows_NT:
	@ppc386 -oleap_year.exe leap_year.pas
	@del leap_year.o

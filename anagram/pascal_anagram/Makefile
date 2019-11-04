ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oanagram.exe anagram.pas
#	@mv anagram anagram.exe
	@rm anagram.o
#	@ppc386 -o"ex.exe" anagram.pas
#	@del anagram.o anagram.ow
#	@gpc --automake -s -O2 --executable-file-name anagram.pas
gpc:
	@gpc anagram.pas -o anagram.exe
Windows_NT:
	@ppc386 -oanagram.exe anagram.pas
	@del anagram.o

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -olinked_list.exe linked_list.pas
#	@mv linked_list linked_list.exe
	@rm linked_list.o
#	@ppc386 -o"ex.exe" linked_list.pas
#	@del linked_list.o linked_list.ow
#	@gpc --automake -s -O2 --executable-file-name linked_list.pas
gpc:
	@gpc linked_list.pas -o linked_list.exe
Windows_NT:
	@ppc386 -olinked_list.exe linked_list.pas
	@del linked_list.o

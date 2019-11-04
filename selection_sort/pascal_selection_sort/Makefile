ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oselection_sort.exe selection_sort.pas
#	@mv selection_sort selection_sort.exe
	@rm selection_sort.o
#	@ppc386 -o"ex.exe" selection_sort.pas
#	@del selection_sort.o selection_sort.ow
#	@gpc --automake -s -O2 --executable-file-name selection_sort.pas
gpc:
	@gpc selection_sort.pas -o selection_sort.exe
Windows_NT:
	@ppc386 -oselection_sort.exe selection_sort.pas
	@del selection_sort.o

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -obubble_sort.exe bubble_sort.pas
#	@mv bubble_sort bubble_sort.exe
	@rm bubble_sort.o
#	@ppc386 -o"ex.exe" bubble_sort.pas
#	@del bubble_sort.o bubble_sort.ow
#	@gpc --automake -s -O2 --executable-file-name bubble_sort.pas
gpc:
	@gpc bubble_sort.pas -o bubble_sort.exe
Windows_NT:
	@ppc386 -obubble_sort.exe bubble_sort.pas
	@del bubble_sort.o

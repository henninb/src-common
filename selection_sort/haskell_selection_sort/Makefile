ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc selection_sort.hs -o selection_sort.exe
	@del selection_sort.o selection_sort.hi
unix:
	@ghc selection_sort.hs -o selection_sort.exe # >&/dev/null
	@rm selection_sort.o selection_sort.hi
clean:
	@rm selection_sort.exe

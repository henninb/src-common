ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc bubble_sort.hs -o bubble_sort.exe
	@del bubble_sort.o bubble_sort.hi
unix:
	@ghc bubble_sort.hs -o bubble_sort.exe # >&/dev/null
	@rm bubble_sort.o bubble_sort.hi
clean:
	@rm bubble_sort.exe

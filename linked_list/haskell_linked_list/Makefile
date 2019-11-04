ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc linked_list.hs -o linked_list.exe
	@del linked_list.o linked_list.hi
unix:
	@ghc linked_list.hs -o linked_list.exe # >&/dev/null
	@rm linked_list.o linked_list.hi
clean:
	@rm linked_list.exe

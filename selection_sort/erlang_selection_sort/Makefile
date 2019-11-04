ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc selection_sort.erl
Windows_NT:
	@erlc selection_sort.erl
clean:

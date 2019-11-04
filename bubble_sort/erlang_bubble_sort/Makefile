ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc bubble_sort.erl
Windows_NT:
	@erlc bubble_sort.erl
clean:

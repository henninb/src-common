ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc nqueens.erl
Windows_NT:
	@erlc nqueens.erl
clean:

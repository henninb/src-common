ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc hanoi.erl
Windows_NT:
	@erlc hanoi.erl
clean:

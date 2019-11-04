ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc gcd.erl
Windows_NT:
	@erlc gcd.erl
clean:

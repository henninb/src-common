ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc quadratic.erl
Windows_NT:
	@erlc quadratic.erl
clean:

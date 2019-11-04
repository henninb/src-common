ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc factors.erl
Windows_NT:
	@erlc factors.erl
clean:

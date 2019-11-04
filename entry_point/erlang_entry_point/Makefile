ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc entry_point.erl
Windows_NT:
	@erlc entry_point.erl
clean:

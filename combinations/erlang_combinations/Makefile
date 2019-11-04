ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc combinations.erl
Windows_NT:
	@erlc combinations.erl
clean:

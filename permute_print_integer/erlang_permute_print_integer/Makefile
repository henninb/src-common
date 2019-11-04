ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc permute_print_integer.erl
Windows_NT:
	@erlc permute_print_integer.erl
clean:

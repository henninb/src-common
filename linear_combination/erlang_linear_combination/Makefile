ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc linear_combination.erl
Windows_NT:
	@erlc linear_combination.erl
clean:

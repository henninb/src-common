ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc pi_calculate.erl
Windows_NT:
	@erlc pi_calculate.erl
clean:

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc lambda_functions.erl
Windows_NT:
	@erlc lambda_functions.erl
clean:

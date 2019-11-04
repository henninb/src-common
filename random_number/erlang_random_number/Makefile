ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc random_number.erl
Windows_NT:
	@erlc random_number.erl
clean:

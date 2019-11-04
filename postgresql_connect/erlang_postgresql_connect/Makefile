ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc postgresql_connect.erl
Windows_NT:
	@erlc postgresql_connect.erl
clean:

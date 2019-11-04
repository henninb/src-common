ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc json_write.erl
Windows_NT:
	@erlc json_write.erl
clean:

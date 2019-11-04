ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc file_write.erl
Windows_NT:
	@erlc file_write.erl
clean:

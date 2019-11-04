ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@go build -o permute_print_integer.exe
Windows_NT:
	@go build -o permute_print_integer.exe
clean:

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@go build -o recursive_addition.exe
Windows_NT:
	@go build -o recursive_addition.exe
clean:

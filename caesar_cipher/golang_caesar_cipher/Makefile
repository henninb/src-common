ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@go build -o caesar_cipher.exe
Windows_NT:
	@go build -o caesar_cipher.exe
clean:

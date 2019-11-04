ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@go build -o base64_encode.exe
Windows_NT:
	@go build -o base64_encode.exe
clean:

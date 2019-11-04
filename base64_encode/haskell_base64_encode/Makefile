ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc base64_encode.hs -o base64_encode.exe
	@del base64_encode.o base64_encode.hi
unix:
	@ghc base64_encode.hs -o base64_encode.exe # >&/dev/null
	@rm base64_encode.o base64_encode.hi
clean:
	@rm base64_encode.exe

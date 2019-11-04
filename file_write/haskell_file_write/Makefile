ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc file_write.hs -o file_write.exe
	@del file_write.o file_write.hi
unix:
	@ghc file_write.hs -o file_write.exe # >&/dev/null
	@rm file_write.o file_write.hi
clean:
	@rm file_write.exe

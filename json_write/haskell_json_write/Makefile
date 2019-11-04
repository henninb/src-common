ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc json_write.hs -o json_write.exe
	@del json_write.o json_write.hi
unix:
	@ghc json_write.hs -o json_write.exe # >&/dev/null
	@rm json_write.o json_write.hi
clean:
	@rm json_write.exe

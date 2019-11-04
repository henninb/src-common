ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc stream_processing.hs -o stream_processing.exe
	@del stream_processing.o stream_processing.hi
unix:
	@ghc stream_processing.hs -o stream_processing.exe # >&/dev/null
	@rm stream_processing.o stream_processing.hi
clean:
	@rm stream_processing.exe

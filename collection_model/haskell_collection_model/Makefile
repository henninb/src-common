ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc collection_model.hs -o collection_model.exe
	@del collection_model.o collection_model.hi
unix:
	@ghc collection_model.hs -o collection_model.exe # >&/dev/null
	@rm collection_model.o collection_model.hi
clean:
	@rm collection_model.exe

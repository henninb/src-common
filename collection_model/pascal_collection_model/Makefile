ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ocollection_model.exe collection_model.pas
#	@mv collection_model collection_model.exe
	@rm collection_model.o
#	@ppc386 -o"ex.exe" collection_model.pas
#	@del collection_model.o collection_model.ow
#	@gpc --automake -s -O2 --executable-file-name collection_model.pas
gpc:
	@gpc collection_model.pas -o collection_model.exe
Windows_NT:
	@ppc386 -ocollection_model.exe collection_model.pas
	@del collection_model.o

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ojson_write.exe json_write.pas
#	@mv json_write json_write.exe
	@rm json_write.o
#	@ppc386 -o"ex.exe" json_write.pas
#	@del json_write.o json_write.ow
#	@gpc --automake -s -O2 --executable-file-name json_write.pas
gpc:
	@gpc json_write.pas -o json_write.exe
Windows_NT:
	@ppc386 -ojson_write.exe json_write.pas
	@del json_write.o

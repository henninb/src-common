ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ostream_processing.exe stream_processing.pas
#	@mv stream_processing stream_processing.exe
	@rm stream_processing.o
#	@ppc386 -o"ex.exe" stream_processing.pas
#	@del stream_processing.o stream_processing.ow
#	@gpc --automake -s -O2 --executable-file-name stream_processing.pas
gpc:
	@gpc stream_processing.pas -o stream_processing.exe
Windows_NT:
	@ppc386 -ostream_processing.exe stream_processing.pas
	@del stream_processing.o

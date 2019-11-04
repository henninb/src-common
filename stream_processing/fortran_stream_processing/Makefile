ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran stream_processing.f -o stream_processing.exe
Windows_NT:
	@gfortran stream_processing.f -o stream_processing.exe

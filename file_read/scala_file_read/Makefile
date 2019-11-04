ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac file_read.scala
	@jar cmf manifest.mf file_read.jar *.class
	@rm *.class
Windows_NT:
	@scalac file_read.scala
	@jar cmf manifest.mf file_read.jar *.class
#	@del *.class
clean:
	@echo clean

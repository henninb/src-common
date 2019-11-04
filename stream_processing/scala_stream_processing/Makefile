ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac stream_processing.scala
	@jar cmf manifest.mf stream_processing.jar *.class
	@rm *.class
Windows_NT:
	@scalac stream_processing.scala
	@jar cmf manifest.mf stream_processing.jar *.class
#	@del *.class
clean:
	@echo clean

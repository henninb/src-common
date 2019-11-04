ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac exception_handler.scala
	@jar cmf manifest.mf exception_handler.jar *.class
	@rm *.class
Windows_NT:
	@scalac exception_handler.scala
	@jar cmf manifest.mf exception_handler.jar *.class
#	@del *.class
clean:
	@echo clean

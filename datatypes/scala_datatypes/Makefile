ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac datatypes.scala
	@jar cmf manifest.mf datatypes.jar *.class
	@rm *.class
Windows_NT:
	@scalac datatypes.scala
	@jar cmf manifest.mf datatypes.jar *.class
#	@del *.class
clean:
	@echo clean

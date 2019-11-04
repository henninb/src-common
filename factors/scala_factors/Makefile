ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac factors.scala
	@jar cmf manifest.mf factors.jar *.class
	@rm *.class
Windows_NT:
	@scalac factors.scala
	@jar cmf manifest.mf factors.jar *.class
#	@del *.class
clean:
	@echo clean

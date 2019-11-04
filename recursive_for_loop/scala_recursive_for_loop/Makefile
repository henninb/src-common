ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac recursive_for_loop.scala
	@jar cmf manifest.mf recursive_for_loop.jar *.class
	@rm *.class
Windows_NT:
	@scalac recursive_for_loop.scala
	@jar cmf manifest.mf recursive_for_loop.jar *.class
#	@del *.class
clean:
	@echo clean

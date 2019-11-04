ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac sleep.scala
	@jar cmf manifest.mf sleep.jar *.class
	@rm *.class
Windows_NT:
	@scalac sleep.scala
	@jar cmf manifest.mf sleep.jar *.class
#	@del *.class
clean:
	@echo clean

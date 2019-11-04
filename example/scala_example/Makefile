ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac example.scala
	@jar cmf manifest.mf example.jar *.class
	@rm *.class
Windows_NT:
	@scalac example.scala
	@jar cmf manifest.mf example.jar *.class
#	@del *.class
clean:
	@echo clean

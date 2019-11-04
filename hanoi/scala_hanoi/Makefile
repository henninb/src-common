ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac hanoi.scala
	@jar cmf manifest.mf hanoi.jar *.class
	@rm *.class
Windows_NT:
	@scalac hanoi.scala
	@jar cmf manifest.mf hanoi.jar *.class
#	@del *.class
clean:
	@echo clean

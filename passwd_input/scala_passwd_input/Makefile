ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac passwd_input.scala
	@jar cmf manifest.mf passwd_input.jar *.class
	@rm *.class
Windows_NT:
	@scalac passwd_input.scala
	@jar cmf manifest.mf passwd_input.jar *.class
#	@del *.class
clean:
	@echo clean

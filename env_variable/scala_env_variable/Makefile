ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac env_variable.scala
	@jar cmf manifest.mf env_variable.jar *.class
	@rm *.class
Windows_NT:
	@scalac env_variable.scala
	@jar cmf manifest.mf env_variable.jar *.class
#	@del *.class
clean:
	@echo clean

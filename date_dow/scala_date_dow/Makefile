ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac date_dow.scala
	@jar cmf manifest.mf date_dow.jar *.class
	@rm *.class
Windows_NT:
	@scalac date_dow.scala
	@jar cmf manifest.mf date_dow.jar *.class
#	@del *.class
clean:
	@echo clean

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac entry_point.scala
	@jar cmf manifest.mf entry_point.jar *.class
	@rm *.class
Windows_NT:
	@scalac entry_point.scala
	@jar cmf manifest.mf entry_point.jar *.class
#	@del *.class
clean:
	@echo clean

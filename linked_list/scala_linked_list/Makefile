ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac linked_list.scala
	@jar cmf manifest.mf linked_list.jar *.class
	@rm *.class
Windows_NT:
	@scalac linked_list.scala
	@jar cmf manifest.mf linked_list.jar *.class
#	@del *.class
clean:
	@echo clean

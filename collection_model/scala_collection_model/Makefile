ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac collection_model.scala
	@jar cmf manifest.mf collection_model.jar *.class
	@rm *.class
Windows_NT:
	@scalac collection_model.scala
	@jar cmf manifest.mf collection_model.jar *.class
#	@del *.class
clean:
	@echo clean

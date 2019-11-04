ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac file_write.scala
	@jar cmf manifest.mf file_write.jar *.class
	@rm *.class
Windows_NT:
	@scalac file_write.scala
	@jar cmf manifest.mf file_write.jar *.class
#	@del *.class
clean:
	@echo clean

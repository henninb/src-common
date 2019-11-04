ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac base64_encode.scala
	@jar cmf manifest.mf base64_encode.jar *.class
	@rm *.class
Windows_NT:
	@scalac base64_encode.scala
	@jar cmf manifest.mf base64_encode.jar *.class
#	@del *.class
clean:
	@echo clean

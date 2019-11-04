ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac caesar_cipher.scala
	@jar cmf manifest.mf caesar_cipher.jar *.class
	@rm *.class
Windows_NT:
	@scalac caesar_cipher.scala
	@jar cmf manifest.mf caesar_cipher.jar *.class
#	@del *.class
clean:
	@echo clean

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac json_write.scala
	@jar cmf manifest.mf json_write.jar *.class
	@rm *.class
Windows_NT:
	@scalac json_write.scala
	@jar cmf manifest.mf json_write.jar *.class
#	@del *.class
clean:
	@echo clean

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac hostname_info.scala
	@jar cmf manifest.mf hostname_info.jar *.class
	@rm *.class
Windows_NT:
	@scalac hostname_info.scala
	@jar cmf manifest.mf hostname_info.jar *.class
#	@del *.class
clean:
	@echo clean

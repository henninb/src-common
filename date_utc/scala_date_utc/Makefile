ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac date_utc.scala
	@jar cmf manifest.mf date_utc.jar *.class
	@rm *.class
Windows_NT:
	@scalac date_utc.scala
	@jar cmf manifest.mf date_utc.jar *.class
#	@del *.class
clean:
	@echo clean

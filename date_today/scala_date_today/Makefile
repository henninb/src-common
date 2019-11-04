ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac date_today.scala
	@jar cmf manifest.mf date_today.jar *.class
	@rm *.class
Windows_NT:
	@scalac date_today.scala
	@jar cmf manifest.mf date_today.jar *.class
#	@del *.class
clean:
	@echo clean

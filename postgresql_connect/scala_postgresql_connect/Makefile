ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac postgresql_connect.scala
	@jar cmf manifest.mf postgresql_connect.jar *.class
	@rm *.class
Windows_NT:
	@scalac postgresql_connect.scala
	@jar cmf manifest.mf postgresql_connect.jar *.class
#	@del *.class
clean:
	@echo clean

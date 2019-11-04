ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac selection_sort.scala
	@jar cmf manifest.mf selection_sort.jar *.class
	@rm *.class
Windows_NT:
	@scalac selection_sort.scala
	@jar cmf manifest.mf selection_sort.jar *.class
#	@del *.class
clean:
	@echo clean

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: gradle manifest
manifest:
#	@rd /s /q build
	@javac SelectionSort.java
	@jar cmf manifest.mf SelectionSortManifest.jar SelectionSort.class
ifeq ($(OS),Windows_NT)
	@del SelectionSort.class
else
	@rm SelectionSort.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@rd /s /q build
	@rd /s /q .gradle
else
	@rm -rf build .gradle
endif
clean:
	@rm SelectionSort.jar

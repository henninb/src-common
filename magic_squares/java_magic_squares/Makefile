ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: gradle manifest
manifest:
#	@rd /s /q build
	@javac MagicSquares.java
	@jar cmf manifest.mf MagicSquaresManifest.jar MagicSquares.class
ifeq ($(OS),Windows_NT)
	@del MagicSquares.class
else
	@rm MagicSquares.class
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
	@rm MagicSquares.jar

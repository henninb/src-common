ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: gradle manifest
manifest:
#	@rd /s /q build
	@javac Base64Encode.java
	@jar cmf manifest.mf Base64EncodeManifest.jar Base64Encode.class
ifeq ($(OS),Windows_NT)
	@del Base64Encode.class
else
	@rm Base64Encode.class
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
	@rm Base64Encode.jar

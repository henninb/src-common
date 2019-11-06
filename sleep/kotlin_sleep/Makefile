ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Sleep.kt -include-runtime -d Sleep.jar
	@rm -rf Sleep
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Sleep.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Sleep.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Sleep.jar

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Datatypes.kt -include-runtime -d Datatypes.jar
	@rm -rf Datatypes
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Datatypes.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Datatypes.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Datatypes.jar

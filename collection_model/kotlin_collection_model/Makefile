ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc CollectionModel.kt -include-runtime -d CollectionModel.jar
	@rm -rf CollectionModel
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\CollectionModel.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/CollectionModel.jar .
	@rm -rf build .gradle
endif
clean:
	@rm CollectionModel.jar

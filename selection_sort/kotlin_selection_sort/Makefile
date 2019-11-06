ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc SelectionSort.kt -include-runtime -d SelectionSort.jar
	@rm -rf SelectionSort
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\SelectionSort.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/SelectionSort.jar .
	@rm -rf build .gradle
endif
clean:
	@rm SelectionSort.jar

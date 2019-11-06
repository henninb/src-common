ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc BubbleSort.kt -include-runtime -d BubbleSort.jar
	@rm -rf BubbleSort
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\BubbleSort.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/BubbleSort.jar .
	@rm -rf build .gradle
endif
clean:
	@rm BubbleSort.jar

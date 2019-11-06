ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Hanoi.kt -include-runtime -d Hanoi.jar
	@rm -rf Hanoi
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Hanoi.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Hanoi.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Hanoi.jar

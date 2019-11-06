ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc DateDow.kt -include-runtime -d DateDow.jar
	@rm -rf DateDow
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\DateDow.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/DateDow.jar .
	@rm -rf build .gradle
endif
clean:
	@rm DateDow.jar

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc PasswdInput.kt -include-runtime -d PasswdInput.jar
	@rm -rf PasswdInput
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\PasswdInput.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/PasswdInput.jar .
	@rm -rf build .gradle
endif
clean:
	@rm PasswdInput.jar

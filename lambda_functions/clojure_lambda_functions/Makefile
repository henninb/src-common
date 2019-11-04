ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@lein uberjar >&/dev/null
	@lein uberjar
	@rm -rf 'base+system+user+dev'
Windows_NT:
	@lein uberjar
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@if exist "build\libs\lambda_functions-1.0.jar" ( move "build\libs\lambda_functions-1.0.jar" . )
	@if exist "build\libs\lambda_functions.jar" ( move "build\libs\lambda_functions.jar" . )
	@if exist "build" ( rd /s /q build )
	@if exist ".gradle" ( rd /s /q .gradle )
	@if exist "base+system+user+dev" ( rd /s /q "base+system+user+dev" )
else
#	@mv build/libs/lambda_functions.jar .
	@mv build/libs/lambda_functions-1.0.jar .
	@rm -rf build .gradle
endif
clean:
	@rm -rf uberjar

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:exception_handler.exe exception_handler.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:exception_handler.exe exception_handler.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:exception_handler.exe exception_handler.cs
endif
vstudio:
	@devenv exception_handler.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm exception_handler.exe

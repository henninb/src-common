ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:magic_squares.exe magic_squares.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:magic_squares.exe magic_squares.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:magic_squares.exe magic_squares.cs
endif
vstudio:
	@devenv magic_squares.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm magic_squares.exe

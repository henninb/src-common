ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:anagram.exe anagram.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:anagram.exe anagram.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:anagram.exe anagram.cs
endif
vstudio:
	@devenv anagram.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm anagram.exe

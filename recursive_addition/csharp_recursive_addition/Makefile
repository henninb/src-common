ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:recursive_addition.exe recursive_addition.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:recursive_addition.exe recursive_addition.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:recursive_addition.exe recursive_addition.cs
endif
vstudio:
	@devenv recursive_addition.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm recursive_addition.exe

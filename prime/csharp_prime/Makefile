ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:prime.exe prime.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:prime.exe prime.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:prime.exe prime.cs
endif
vstudio:
	@devenv prime.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm prime.exe

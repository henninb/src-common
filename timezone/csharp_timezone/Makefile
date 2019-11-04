ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:timezone.exe timezone.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:timezone.exe timezone.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:timezone.exe timezone.cs
endif
vstudio:
	@devenv timezone.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm timezone.exe

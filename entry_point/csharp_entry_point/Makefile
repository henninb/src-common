ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:entry_point.exe entry_point.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:entry_point.exe entry_point.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:entry_point.exe entry_point.cs
endif
vstudio:
	@devenv entry_point.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm entry_point.exe

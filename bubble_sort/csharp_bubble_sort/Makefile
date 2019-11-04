ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:bubble_sort.exe bubble_sort.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:bubble_sort.exe bubble_sort.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:bubble_sort.exe bubble_sort.cs
endif
vstudio:
	@devenv bubble_sort.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm bubble_sort.exe

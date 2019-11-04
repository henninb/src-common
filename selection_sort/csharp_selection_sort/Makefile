ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:selection_sort.exe selection_sort.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:selection_sort.exe selection_sort.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:selection_sort.exe selection_sort.cs
endif
vstudio:
	@devenv selection_sort.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm selection_sort.exe

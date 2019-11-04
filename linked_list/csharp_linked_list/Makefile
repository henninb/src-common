ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:linked_list.exe linked_list.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:linked_list.exe linked_list.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:linked_list.exe linked_list.cs
endif
vstudio:
	@devenv linked_list.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm linked_list.exe

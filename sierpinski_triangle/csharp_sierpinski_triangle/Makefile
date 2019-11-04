ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:sierpinski_triangle.exe sierpinski_triangle.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:sierpinski_triangle.exe sierpinski_triangle.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:sierpinski_triangle.exe sierpinski_triangle.cs
endif
vstudio:
	@devenv sierpinski_triangle.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm sierpinski_triangle.exe

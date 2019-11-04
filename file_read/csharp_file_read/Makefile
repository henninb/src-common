ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:file_read.exe file_read.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:file_read.exe file_read.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:file_read.exe file_read.cs
endif
vstudio:
	@devenv file_read.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm file_read.exe

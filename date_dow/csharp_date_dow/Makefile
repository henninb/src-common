ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:date_dow.exe date_dow.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:date_dow.exe date_dow.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:date_dow.exe date_dow.cs
endif
vstudio:
	@devenv date_dow.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm date_dow.exe

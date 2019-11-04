ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:date_utc.exe date_utc.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:date_utc.exe date_utc.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:date_utc.exe date_utc.cs
endif
vstudio:
	@devenv date_utc.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm date_utc.exe

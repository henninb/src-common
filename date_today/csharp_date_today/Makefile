ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:date_today.exe date_today.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:date_today.exe date_today.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:date_today.exe date_today.cs
endif
vstudio:
	@devenv date_today.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm date_today.exe

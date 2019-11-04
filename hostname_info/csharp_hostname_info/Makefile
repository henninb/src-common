ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:hostname_info.exe hostname_info.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:hostname_info.exe hostname_info.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:hostname_info.exe hostname_info.cs
endif
vstudio:
	@devenv hostname_info.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm hostname_info.exe

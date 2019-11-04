ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:json_write.exe json_write.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:json_write.exe json_write.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:json_write.exe json_write.cs
endif
vstudio:
	@devenv json_write.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm json_write.exe

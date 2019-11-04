ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:permute_print_integer.exe permute_print_integer.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:permute_print_integer.exe permute_print_integer.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:permute_print_integer.exe permute_print_integer.cs
endif
vstudio:
	@devenv permute_print_integer.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm permute_print_integer.exe

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full example.sml -o example.exe
	@rm example.ui
	@rm example.uo
Windows_NT:
	@mosmlc -P full example.sml -o example.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del example.ui
	@c:\windows\system32\cmd.exe /c del example.uo
mlton:
	@mlton -output example.exe example.sml
smlnj:
smlsharp:
	@smlsharp -c example.sml
clean:
	@rm example.exe

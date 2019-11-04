ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full factors.sml -o factors.exe
	@rm factors.ui
	@rm factors.uo
Windows_NT:
	@mosmlc -P full factors.sml -o factors.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del factors.ui
	@c:\windows\system32\cmd.exe /c del factors.uo
mlton:
	@mlton -output factors.exe factors.sml
smlnj:
smlsharp:
	@smlsharp -c factors.sml
clean:
	@rm factors.exe

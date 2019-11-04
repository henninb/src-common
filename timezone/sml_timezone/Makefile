ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full timezone.sml -o timezone.exe
	@rm timezone.ui
	@rm timezone.uo
Windows_NT:
	@mosmlc -P full timezone.sml -o timezone.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del timezone.ui
	@c:\windows\system32\cmd.exe /c del timezone.uo
mlton:
	@mlton -output timezone.exe timezone.sml
smlnj:
smlsharp:
	@smlsharp -c timezone.sml
clean:
	@rm timezone.exe

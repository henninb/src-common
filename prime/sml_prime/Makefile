ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full prime.sml -o prime.exe
	@rm prime.ui
	@rm prime.uo
Windows_NT:
	@mosmlc -P full prime.sml -o prime.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del prime.ui
	@c:\windows\system32\cmd.exe /c del prime.uo
mlton:
	@mlton -output prime.exe prime.sml
smlnj:
smlsharp:
	@smlsharp -c prime.sml
clean:
	@rm prime.exe

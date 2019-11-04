ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full nqueens.sml -o nqueens.exe
	@rm nqueens.ui
	@rm nqueens.uo
Windows_NT:
	@mosmlc -P full nqueens.sml -o nqueens.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del nqueens.ui
	@c:\windows\system32\cmd.exe /c del nqueens.uo
mlton:
	@mlton -output nqueens.exe nqueens.sml
smlnj:
smlsharp:
	@smlsharp -c nqueens.sml
clean:
	@rm nqueens.exe

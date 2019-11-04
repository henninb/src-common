ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full hanoi.sml -o hanoi.exe
	@rm hanoi.ui
	@rm hanoi.uo
Windows_NT:
	@mosmlc -P full hanoi.sml -o hanoi.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del hanoi.ui
	@c:\windows\system32\cmd.exe /c del hanoi.uo
mlton:
	@mlton -output hanoi.exe hanoi.sml
smlnj:
smlsharp:
	@smlsharp -c hanoi.sml
clean:
	@rm hanoi.exe

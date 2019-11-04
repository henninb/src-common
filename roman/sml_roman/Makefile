ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full roman.sml -o roman.exe
	@rm roman.ui
	@rm roman.uo
Windows_NT:
	@mosmlc -P full roman.sml -o roman.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del roman.ui
	@c:\windows\system32\cmd.exe /c del roman.uo
mlton:
	@mlton -output roman.exe roman.sml
smlnj:
smlsharp:
	@smlsharp -c roman.sml
clean:
	@rm roman.exe

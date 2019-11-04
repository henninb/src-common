ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full anagram.sml -o anagram.exe
	@rm anagram.ui
	@rm anagram.uo
Windows_NT:
	@mosmlc -P full anagram.sml -o anagram.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del anagram.ui
	@c:\windows\system32\cmd.exe /c del anagram.uo
mlton:
	@mlton -output anagram.exe anagram.sml
smlnj:
smlsharp:
	@smlsharp -c anagram.sml
clean:
	@rm anagram.exe

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full sleep.sml -o sleep.exe
	@rm sleep.ui
	@rm sleep.uo
Windows_NT:
	@mosmlc -P full sleep.sml -o sleep.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del sleep.ui
	@c:\windows\system32\cmd.exe /c del sleep.uo
mlton:
	@mlton -output sleep.exe sleep.sml
smlnj:
smlsharp:
	@smlsharp -c sleep.sml
clean:
	@rm sleep.exe

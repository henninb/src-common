ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full factorial.sml -o factorial.exe
	@rm factorial.ui
	@rm factorial.uo
Windows_NT:
	@mosmlc -P full factorial.sml -o factorial.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del factorial.ui
	@c:\windows\system32\cmd.exe /c del factorial.uo
mlton:
	@mlton -output factorial.exe factorial.sml
smlnj:
smlsharp:
	@smlsharp -c factorial.sml
clean:
	@rm factorial.exe

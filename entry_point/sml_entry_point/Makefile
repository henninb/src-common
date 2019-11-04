ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full entry_point.sml -o entry_point.exe
	@rm entry_point.ui
	@rm entry_point.uo
Windows_NT:
	@mosmlc -P full entry_point.sml -o entry_point.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del entry_point.ui
	@c:\windows\system32\cmd.exe /c del entry_point.uo
mlton:
	@mlton -output entry_point.exe entry_point.sml
smlnj:
smlsharp:
	@smlsharp -c entry_point.sml
clean:
	@rm entry_point.exe

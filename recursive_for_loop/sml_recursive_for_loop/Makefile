ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full recursive_for_loop.sml -o recursive_for_loop.exe
	@rm recursive_for_loop.ui
	@rm recursive_for_loop.uo
Windows_NT:
	@mosmlc -P full recursive_for_loop.sml -o recursive_for_loop.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del recursive_for_loop.ui
	@c:\windows\system32\cmd.exe /c del recursive_for_loop.uo
mlton:
	@mlton -output recursive_for_loop.exe recursive_for_loop.sml
smlnj:
smlsharp:
	@smlsharp -c recursive_for_loop.sml
clean:
	@rm recursive_for_loop.exe

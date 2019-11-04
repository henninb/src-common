ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full recursive_addition.sml -o recursive_addition.exe
	@rm recursive_addition.ui
	@rm recursive_addition.uo
Windows_NT:
	@mosmlc -P full recursive_addition.sml -o recursive_addition.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del recursive_addition.ui
	@c:\windows\system32\cmd.exe /c del recursive_addition.uo
mlton:
	@mlton -output recursive_addition.exe recursive_addition.sml
smlnj:
smlsharp:
	@smlsharp -c recursive_addition.sml
clean:
	@rm recursive_addition.exe

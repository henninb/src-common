ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full fibonacci.sml -o fibonacci.exe
	@rm fibonacci.ui
	@rm fibonacci.uo
Windows_NT:
	@mosmlc -P full fibonacci.sml -o fibonacci.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del fibonacci.ui
	@c:\windows\system32\cmd.exe /c del fibonacci.uo
mlton:
	@mlton -output fibonacci.exe fibonacci.sml
smlnj:
smlsharp:
	@smlsharp -c fibonacci.sml
clean:
	@rm fibonacci.exe

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full gcd.sml -o gcd.exe
	@rm gcd.ui
	@rm gcd.uo
Windows_NT:
	@mosmlc -P full gcd.sml -o gcd.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del gcd.ui
	@c:\windows\system32\cmd.exe /c del gcd.uo
mlton:
	@mlton -output gcd.exe gcd.sml
smlnj:
smlsharp:
	@smlsharp -c gcd.sml
clean:
	@rm gcd.exe

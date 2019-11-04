ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full luhn.sml -o luhn.exe
	@rm luhn.ui
	@rm luhn.uo
Windows_NT:
	@mosmlc -P full luhn.sml -o luhn.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del luhn.ui
	@c:\windows\system32\cmd.exe /c del luhn.uo
mlton:
	@mlton -output luhn.exe luhn.sml
smlnj:
smlsharp:
	@smlsharp -c luhn.sml
clean:
	@rm luhn.exe

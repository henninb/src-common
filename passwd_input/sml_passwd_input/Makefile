ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full passwd_input.sml -o passwd_input.exe
	@rm passwd_input.ui
	@rm passwd_input.uo
Windows_NT:
	@mosmlc -P full passwd_input.sml -o passwd_input.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del passwd_input.ui
	@c:\windows\system32\cmd.exe /c del passwd_input.uo
mlton:
	@mlton -output passwd_input.exe passwd_input.sml
smlnj:
smlsharp:
	@smlsharp -c passwd_input.sml
clean:
	@rm passwd_input.exe

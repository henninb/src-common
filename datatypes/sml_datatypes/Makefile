ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full datatypes.sml -o datatypes.exe
	@rm datatypes.ui
	@rm datatypes.uo
Windows_NT:
	@mosmlc -P full datatypes.sml -o datatypes.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del datatypes.ui
	@c:\windows\system32\cmd.exe /c del datatypes.uo
mlton:
	@mlton -output datatypes.exe datatypes.sml
smlnj:
smlsharp:
	@smlsharp -c datatypes.sml
clean:
	@rm datatypes.exe

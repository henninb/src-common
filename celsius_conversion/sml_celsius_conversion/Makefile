ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full celsius_conversion.sml -o celsius_conversion.exe
	@rm celsius_conversion.ui
	@rm celsius_conversion.uo
Windows_NT:
	@mosmlc -P full celsius_conversion.sml -o celsius_conversion.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del celsius_conversion.ui
	@c:\windows\system32\cmd.exe /c del celsius_conversion.uo
mlton:
	@mlton -output celsius_conversion.exe celsius_conversion.sml
smlnj:
smlsharp:
	@smlsharp -c celsius_conversion.sml
clean:
	@rm celsius_conversion.exe

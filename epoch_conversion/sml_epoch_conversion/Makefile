ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full epoch_conversion.sml -o epoch_conversion.exe
	@rm epoch_conversion.ui
	@rm epoch_conversion.uo
Windows_NT:
	@mosmlc -P full epoch_conversion.sml -o epoch_conversion.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del epoch_conversion.ui
	@c:\windows\system32\cmd.exe /c del epoch_conversion.uo
mlton:
	@mlton -output epoch_conversion.exe epoch_conversion.sml
smlnj:
smlsharp:
	@smlsharp -c epoch_conversion.sml
clean:
	@rm epoch_conversion.exe

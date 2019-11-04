ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full julian_date.sml -o julian_date.exe
	@rm julian_date.ui
	@rm julian_date.uo
Windows_NT:
	@mosmlc -P full julian_date.sml -o julian_date.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del julian_date.ui
	@c:\windows\system32\cmd.exe /c del julian_date.uo
mlton:
	@mlton -output julian_date.exe julian_date.sml
smlnj:
smlsharp:
	@smlsharp -c julian_date.sml
clean:
	@rm julian_date.exe

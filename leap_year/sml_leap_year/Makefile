ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full leap_year.sml -o leap_year.exe
	@rm leap_year.ui
	@rm leap_year.uo
Windows_NT:
	@mosmlc -P full leap_year.sml -o leap_year.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del leap_year.ui
	@c:\windows\system32\cmd.exe /c del leap_year.uo
mlton:
	@mlton -output leap_year.exe leap_year.sml
smlnj:
smlsharp:
	@smlsharp -c leap_year.sml
clean:
	@rm leap_year.exe

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full date_dow.sml -o date_dow.exe
	@rm date_dow.ui
	@rm date_dow.uo
Windows_NT:
	@mosmlc -P full date_dow.sml -o date_dow.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del date_dow.ui
	@c:\windows\system32\cmd.exe /c del date_dow.uo
mlton:
	@mlton -output date_dow.exe date_dow.sml
smlnj:
smlsharp:
	@smlsharp -c date_dow.sml
clean:
	@rm date_dow.exe

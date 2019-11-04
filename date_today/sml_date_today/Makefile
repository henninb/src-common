ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full date_today.sml -o date_today.exe
	@rm date_today.ui
	@rm date_today.uo
Windows_NT:
	@mosmlc -P full date_today.sml -o date_today.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del date_today.ui
	@c:\windows\system32\cmd.exe /c del date_today.uo
mlton:
	@mlton -output date_today.exe date_today.sml
smlnj:
smlsharp:
	@smlsharp -c date_today.sml
clean:
	@rm date_today.exe

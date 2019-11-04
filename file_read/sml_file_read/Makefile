ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full file_read.sml -o file_read.exe
	@rm file_read.ui
	@rm file_read.uo
Windows_NT:
	@mosmlc -P full file_read.sml -o file_read.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del file_read.ui
	@c:\windows\system32\cmd.exe /c del file_read.uo
mlton:
	@mlton -output file_read.exe file_read.sml
smlnj:
smlsharp:
	@smlsharp -c file_read.sml
clean:
	@rm file_read.exe

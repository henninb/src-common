ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full file_write.sml -o file_write.exe
	@rm file_write.ui
	@rm file_write.uo
Windows_NT:
	@mosmlc -P full file_write.sml -o file_write.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del file_write.ui
	@c:\windows\system32\cmd.exe /c del file_write.uo
mlton:
	@mlton -output file_write.exe file_write.sml
smlnj:
smlsharp:
	@smlsharp -c file_write.sml
clean:
	@rm file_write.exe

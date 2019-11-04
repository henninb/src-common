ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full random_number.sml -o random_number.exe
	@rm random_number.ui
	@rm random_number.uo
Windows_NT:
	@mosmlc -P full random_number.sml -o random_number.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del random_number.ui
	@c:\windows\system32\cmd.exe /c del random_number.uo
mlton:
	@mlton -output random_number.exe random_number.sml
smlnj:
smlsharp:
	@smlsharp -c random_number.sml
clean:
	@rm random_number.exe

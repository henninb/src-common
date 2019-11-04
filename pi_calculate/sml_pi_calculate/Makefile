ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full pi_calculate.sml -o pi_calculate.exe
	@rm pi_calculate.ui
	@rm pi_calculate.uo
Windows_NT:
	@mosmlc -P full pi_calculate.sml -o pi_calculate.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del pi_calculate.ui
	@c:\windows\system32\cmd.exe /c del pi_calculate.uo
mlton:
	@mlton -output pi_calculate.exe pi_calculate.sml
smlnj:
smlsharp:
	@smlsharp -c pi_calculate.sml
clean:
	@rm pi_calculate.exe

ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full euler_phi.sml -o euler_phi.exe
	@rm euler_phi.ui
	@rm euler_phi.uo
Windows_NT:
	@mosmlc -P full euler_phi.sml -o euler_phi.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del euler_phi.ui
	@c:\windows\system32\cmd.exe /c del euler_phi.uo
mlton:
	@mlton -output euler_phi.exe euler_phi.sml
smlnj:
smlsharp:
	@smlsharp -c euler_phi.sml
clean:
	@rm euler_phi.exe

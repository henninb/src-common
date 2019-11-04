ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full env_variable.sml -o env_variable.exe
	@rm env_variable.ui
	@rm env_variable.uo
Windows_NT:
	@mosmlc -P full env_variable.sml -o env_variable.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del env_variable.ui
	@c:\windows\system32\cmd.exe /c del env_variable.uo
mlton:
	@mlton -output env_variable.exe env_variable.sml
smlnj:
smlsharp:
	@smlsharp -c env_variable.sml
clean:
	@rm env_variable.exe

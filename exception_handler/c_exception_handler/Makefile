ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

#CFLAGS += -D UNIT_TEST

all: unix
Windows_NT:
	@gcc exception_handler.c -o exception_handler.exe -O2 -Wall
unix:
	@gcc -D UNIT_TEST exception_handler.c exception_handler_test.c -o exception_handler_test.exe -O2 -Wall -lm -lcunit
	@gcc exception_handler.c -o exception_handler.exe -O2 -Wall -lm
mingw64:
	@x86_64-w64-mingw32-gcc exception_handler.c -o exception_handler.exe -O2 -Wall
vstudio:
	@SET LIB=lib;%LIB%
	@SET INCLUDE=include;%INCLUDE%
	@cl.exe /nologo /Od /D "WIN32" /D "_CONSOLE" /D "_MBCS" /Gm /EHsc /RTC1 /MLd /Fo"exception_handler" /Fd"vc70.pdb" /W3 /c /Wp64 /ZI /TC exception_handler.c
	@link.exe /nologo /OUT:exception_handler.exe /INCREMENTAL /SUBSYSTEM:CONSOLE /MACHINE:X86 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib exception_handler.obj
#	@devenv exception_handler.2003.sln /build debug
#	@rd /S /Q Debug
	@del *.suo *.ncb *.ilk *.pdb *.obj *.idb 2> nul
clean:
	rm exception_handler.exe

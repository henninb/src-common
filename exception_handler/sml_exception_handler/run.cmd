@echo off

set PATH=C:\mosml\bin
set OS=Windows_NT

call build N
exception_handler.exe

pause

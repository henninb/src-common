@echo off

set OS=Windows_NT

call build N
exception_handler.exe

pause
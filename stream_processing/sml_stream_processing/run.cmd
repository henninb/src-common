@echo off

set PATH=C:\mosml\bin
set OS=Windows_NT

call build N
stream_processing.exe

pause

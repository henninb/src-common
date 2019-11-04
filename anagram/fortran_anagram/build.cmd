@echo off

set PATH=C:\TDM-GCC-64\bin
set OS=Windows_NT

mingw32-make Windows_NT

IF "%~1"=="" pause

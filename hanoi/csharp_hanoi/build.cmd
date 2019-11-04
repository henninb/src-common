@echo off

rem need to escape space to work with mingw32-make
set PATH=%WINDIR%\Microsoft.NET\Framework\v2.0.50727
set PATH=%WINDIR%\Microsoft.NET\Framework\v4.0.30319
set PATH=C:\TDM-GCC-64\bin;%PATH%
set OS=Windows_NT

mingw32-make Windows_NT

IF "%~1"=="" pause

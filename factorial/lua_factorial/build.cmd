@echo off

rem need to escape space to work with mingw32-make
set PATH=c:\lua
set PATH=C:\TDM-GCC-64\bin;%PATH%
set OS=win32

mingw32-make win32

pause

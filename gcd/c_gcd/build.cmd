@echo off

rem need to escape space to work with mingw32-make
set PATH=C:\TDM-GCC-64\bin
rem set PATH="C:\MinGW\bin";%PATH%
rem set PATH="C:\MinGW\libexec\gcc\mingw32\4.9.3";%PATH%
rem set C_INCLUDE_PATH=c:\MinGW\include;C:\MinGW\lib\gcc\mingw32\4.9.3\include
rem set LIBRARY_PATH=C:\MinGW\lib;C:\MinGW\lib\gcc\mingw32\4.9.3
set OS=Windows_NT

mingw32-make Windows_NT

IF "%~1"=="" pause

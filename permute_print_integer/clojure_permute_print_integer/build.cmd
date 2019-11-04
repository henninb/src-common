@echo off

rem need to escape (^) spaces to work with mingw32-make
set PATH=C:\TDM-GCC-64\bin
rem set PATH=C:\gradle\bin;%PATH%
rem set PATH=%AllUsersProfile%\chocolatey\bin;%PATH%
set PATH=C:\ProgramData\chocolatey\bin;%PATH%
set PATH=C:\Java\jdk\bin;%PATH%

set JAVA_HOME=C:\Java\jdk

set OS=Windows_NT

mingw32-make Windows_NT gradle

IF "%~1"=="" pause

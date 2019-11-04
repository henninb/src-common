@echo off

set PATH=C:\TDM-GCC-64\bin
set PATH=C:\Java\jdk\bin;%PATH%
set PATH=C:\Java\jre\bin;%PATH%
set PATH=%ProgramData%\chocolatey\bin;%PATH%

rem set PATH=C:\Java\jdk\bin;%PATH%
set PATH=%GROOVY_HOME%\bin;%PATH%
rem set PATH=C:\Windows\System32;%PATH%
set OS=Windows_NT

set JAVA_HOME=C:\Java\jdk

mingw32-make manifest gradle

IF "%~1"=="" pause

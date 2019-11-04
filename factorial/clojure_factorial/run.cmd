@echo off

set PATH=C:\ProgramData\chocolatey\bin;%PATH%
set PATH=C:\Java\jre\bin;%PATH%

call build N
call lein run

pause

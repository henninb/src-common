@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\recursive_for_loop.ps1"
rem powershell.exe -noprofile recursive_for_loop.ps1
rem powershell.exe –noexit recursive_for_loop.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File recursive_for_loop.ps1

pause

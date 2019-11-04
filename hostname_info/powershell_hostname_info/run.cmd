@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\hostname_info.ps1"
rem powershell.exe -noprofile hostname_info.ps1
rem powershell.exe –noexit hostname_info.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File hostname_info.ps1

pause

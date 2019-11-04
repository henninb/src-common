@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\datatypes.ps1"
rem powershell.exe -noprofile datatypes.ps1
rem powershell.exe –noexit datatypes.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File datatypes.ps1

pause

@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\easter_calculator.ps1"
rem powershell.exe -noprofile easter_calculator.ps1
rem powershell.exe –noexit easter_calculator.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File easter_calculator.ps1

pause

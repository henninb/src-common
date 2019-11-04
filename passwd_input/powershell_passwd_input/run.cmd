@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\passwd_input.ps1"
rem powershell.exe -noprofile passwd_input.ps1
rem powershell.exe –noexit passwd_input.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File passwd_input.ps1

pause

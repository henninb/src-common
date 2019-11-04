@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\hanoi.ps1"
rem powershell.exe -noprofile hanoi.ps1
rem powershell.exe –noexit hanoi.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File hanoi.ps1

pause

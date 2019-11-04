@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\file_read.ps1"
rem powershell.exe -noprofile file_read.ps1
rem powershell.exe –noexit file_read.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File file_read.ps1

pause

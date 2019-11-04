@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\file_write.ps1"
rem powershell.exe -noprofile file_write.ps1
rem powershell.exe –noexit file_write.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File file_write.ps1

pause

@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\caesar_cipher.ps1"
rem powershell.exe -noprofile caesar_cipher.ps1
rem powershell.exe –noexit caesar_cipher.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File caesar_cipher.ps1

pause

@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\collection_model.ps1"
rem powershell.exe -noprofile collection_model.ps1
rem powershell.exe –noexit collection_model.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File collection_model.ps1

pause

@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\base64_encode.ps1"
rem powershell.exe -noprofile base64_encode.ps1
rem powershell.exe –noexit base64_encode.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File base64_encode.ps1

pause

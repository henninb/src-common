@echo off

PATH=%ProgramData%\chocolatey
echo In the choco.exe Properties window -> Compatibility tab checkbox "Run this program as an administrator".

mklink /J "C:\Java\jdk" "C:\Program Files\Java\jdk1.8.0_152"
mklink /J "C:\Java\jre" "C:\Program Files\Java\jre1.8.0_152"
choco install gradle -y

pause
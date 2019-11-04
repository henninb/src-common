@echo off

PATH=%ProgramData%\chocolatey;C:\ProgramData\nvm
echo In the choco.exe Properties window -> Compatibility tab checkbox "Run this program as an administrator".

choco install nvm -y
nvm install node
nvm install node 32
rem echo npm

pause

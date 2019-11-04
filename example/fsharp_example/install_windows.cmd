@echo off

PATH=%ProgramData%\chocolatey
echo In the choco.exe Properties window -> Compatibility tab checkbox "Run this program as an administrator".

rem choco install curl

echo Fsharp 1.9 does not work
rem echo https://www.microsoft.com/en-us/download/details.aspx?id=52590
curl https://download.microsoft.com/download/B/C/D/BCD0867E-671E-47F0-A636-90C0D6432EC5/InstallFSharp-1.9.4.19.msi

echo install Visual Studio Community 2017
echo ensure the f# language is selected as part of the install

echo bundler does not work
rem echo https://www.microsoft.com/en-us/download/details.aspx?id=48179
rem choco install visualfsharptools

pause

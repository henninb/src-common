@echo off

SET VSINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE
SET VCINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio 12.0
SET MSVC_DIR=%VCINSTALLDIR%\VC7
SET PATH=%VSINSTALLDIR%;%MSVC_DIR%\BIN;%VCINSTALLDIR%\Common7\Tools;%VCINSTALLDIR%\Common7\Tools\bin\prerelease;%VCINSTALLDIR%\Common7\Tools\bin;%PATH%
SET INCLUDE=%MSVC_DIR%\ATLMFC\INCLUDE;%MSVC_DIR%\INCLUDE;%MSVC_DIR%\PlatformSDK\include\prerelease;%MSVC_DIR%\PlatformSDK\include;%FrameworkSDKDir%\include;%INCLUDE%

devenv project.sln /build release
rem del /f /q *.suo
rem del /f /q *.sdf
del /f /q *.pdb
del /f /q project.log
del /f /q *.obj
rd /s /q nqueens.tlog

pause

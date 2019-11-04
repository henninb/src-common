@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar entry_point.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar entry_pointManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;entry_point.jar entry_point
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. entry_point

rem as a script
rem groovy entry_point
rem groovy entry_point.groovy

pause

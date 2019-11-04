@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar sleep.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar sleepManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;sleep.jar sleep
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. sleep

rem as a script
rem groovy sleep
rem groovy sleep.groovy

pause

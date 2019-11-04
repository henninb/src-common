@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar sidereal_time.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar sidereal_timeManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;sidereal_time.jar sidereal_time
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. sidereal_time

rem as a script
rem groovy sidereal_time
rem groovy sidereal_time.groovy

pause

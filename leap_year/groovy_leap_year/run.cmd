@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar leap_year.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar leap_yearManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;leap_year.jar leap_year
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. leap_year

rem as a script
rem groovy leap_year
rem groovy leap_year.groovy

pause

@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar date_today.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar date_todayManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;date_today.jar date_today
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. date_today

rem as a script
rem groovy date_today
rem groovy date_today.groovy

pause

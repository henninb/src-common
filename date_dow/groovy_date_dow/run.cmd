@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar date_dow.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar date_dowManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;date_dow.jar date_dow
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. date_dow

rem as a script
rem groovy date_dow
rem groovy date_dow.groovy

pause

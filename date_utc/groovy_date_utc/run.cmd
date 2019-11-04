@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar date_utc.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar date_utcManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;date_utc.jar date_utc
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. date_utc

rem as a script
rem groovy date_utc
rem groovy date_utc.groovy

pause

@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar prime.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar primeManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;prime.jar prime
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. prime

rem as a script
rem groovy prime
rem groovy prime.groovy

pause

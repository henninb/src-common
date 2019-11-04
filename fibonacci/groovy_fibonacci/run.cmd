@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar fibonacci.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar fibonacciManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;fibonacci.jar fibonacci
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. fibonacci

rem as a script
rem groovy fibonacci
rem groovy fibonacci.groovy

pause

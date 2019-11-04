@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar lambda_functions.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar lambda_functionsManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;lambda_functions.jar lambda_functions
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. lambda_functions

rem as a script
rem groovy lambda_functions
rem groovy lambda_functions.groovy

pause

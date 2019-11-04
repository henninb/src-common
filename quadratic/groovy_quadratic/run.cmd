@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar quadratic.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar quadraticManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;quadratic.jar quadratic
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. quadratic

rem as a script
rem groovy quadratic
rem groovy quadratic.groovy

pause

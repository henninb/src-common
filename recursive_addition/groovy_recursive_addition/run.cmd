@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar recursive_addition.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar recursive_additionManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;recursive_addition.jar recursive_addition
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. recursive_addition

rem as a script
rem groovy recursive_addition
rem groovy recursive_addition.groovy

pause

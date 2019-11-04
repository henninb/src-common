@echo off

set PATH=%GROOVY_HOME%\bin
set PATH=c:\Java\jre\bin;%PATH%
set OS=Windows_NT

call build N
java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar random_number.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar -jar random_numberManifest.jar
rem java -cp %GROOVY_HOME%\embeddable\groovy-all-2.4.13.jar;random_number.jar random_number
rem java -cp C:\groovy\embeddable\groovy-all-2.4.12.jar;. random_number

rem as a script
rem groovy random_number
rem groovy random_number.groovy

pause
